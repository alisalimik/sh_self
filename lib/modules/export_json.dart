import 'dart:convert';
import 'dart:io';

import 'package:sh_self/sh_self.dart';
import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/helpers.dart';
import 'package:sh_self/utils/models/sh_data_export.dart';
import 'package:sh_self/utils/models/sh_filter.dart';
import 'package:sh_self/utils/models/sh_module.dart';

void exportJson() => ShModule.onNewMessage(
      _function,
      ShFilter.me() + ShFilter.regex(r'^[Ee]xport [Jj]son$'),
    );
Future<void> _function(update) async {
  if (update is! td.UpdateNewMessage) return;
  await editMessage(update.message, "Export started...");

  final td.Sessions sessions =
      await telegramApp.client.send(const td.GetActiveSessions());
  await editMessage(
    update.message,
    "Sessions exported!\nexporting Web sessions...",
  );
  final td.ConnectedWebsites webSessions =
      await telegramApp.client.send(const td.GetConnectedWebsites());
  await editMessage(
    update.message,
    "Sessions exported!\nWeb sessions exported!\nexporting contacts...",
  );

  final td.Users contacts =
      await telegramApp.client.send(const td.GetContacts());
  await editMessage(
    update.message,
    "Sessions exported!\nWeb sessions exported!\nContacts exported\nexporting chats...",
  );

  final td.Chats chats =
      await telegramApp.client.send(const td.GetChats(limit: 50));
  await editMessage(
    update.message,
    "Sessions exported!\nWeb sessions exported!\nContacts exported\nChats exported!\nexporting stories...",
  );

  final td.Stories stories = await telegramApp.client
      .send(const td.GetArchivedStories(limit: 100, fromStoryId: 0));
  await editMessage(
    update.message,
    "Sessions exported!\nWeb sessions exported!\nContacts exported\nChats exported!\nStories exported!\nexporting frequent chats...",
  );
  // ignore: unused_local_variable
  final td.Chats topChats = await telegramApp.client.send(
    const td.GetTopChats(limit: 5, category: td.TopChatCategoryUsers()),
  );
  await editMessage(
    update.message,
    "Sessions exported!\nWeb sessions exported!\nContacts exported\nChats exported!\nStories exported!\nFrequent chats exported!\nexporting profile photos...",
  );
  final td.ChatPhotos profilePhotos = await telegramApp.client.send(
    td.GetUserProfilePhotos(
      limit: 20,
      offset: 0,
      userId: telegramApp.me?.id ??
          (update.message.senderId as td.MessageSenderUser).userId,
    ),
  );
  await editMessage(
    update.message,
    "Sessions exported!\nWeb sessions exported!\nContacts exported\nChats exported!\nStories exported!\nFrequent chats exported!\nProfile photos exported!\nexporting personal info...",
  );
  final td.UserFullInfo myInfo = await telegramApp.client
      .send(td.GetUserFullInfo(userId: telegramApp.me?.id ?? 0));
  await editMessage(
    update.message,
    "Sessions exported!\nWeb sessions exported!\nContacts exported\nChats exported!\nStories exported!\nFrequent chats exported!\nProfile photos exported!\nPersonal info exported!\n exporting contact full info...",
  );
  final List<ProfilePicture> profileP = [];
  for (final td.ChatPhoto ph in profilePhotos.photos) {
    int? fileId;
    if (ph.animation != null) {
      fileId = ph.animation?.file.id;
    } else {
      fileId = ph.sizes.first.photo.id;
    }
    if (fileId == null || fileId == 0) return;
    final td.File file = await telegramApp.client.send(
      td.DownloadFile(
        fileId: fileId,
        priority: 1,
        offset: 0,
        limit: 0,
        synchronous: true,
      ),
    );
    profileP.add(
      ProfilePicture(
        date: ph.addedDate.toDateTime(),
        dateUnixtime: ph.addedDate.toString(),
        photo: file.local.path,
      ),
    );
  }
  final List<Contact> cList = [];
  for (final int cId in contacts.userIds) {
    final td.User c = await telegramApp.client.send(td.GetUser(userId: cId));
    cList.add(
      Contact(
        firstName: c.firstName,
        lastName: c.lastName,
        phoneNumber: c.phoneNumber,
        date: DateTime.now(),
        dateUnixtime:
            (DateTime.now().millisecondsSinceEpoch ~/ 1000).toString(),
      ),
    );
  }
  await editMessage(
    update.message,
    "Sessions exported!\nWeb sessions exported!\nContacts exported\nChats exported!\nStories exported!\nFrequent chats exported!\nProfile photos exported!\nPersonal info exported!\nContacts full info exported!\nexporting private chats history...",
  );
  final List<Chat> chList = [];
  for (final int chId in chats.chatIds) {
    final td.Chat ch = await telegramApp.client.send(td.GetChat(chatId: chId));
    td.Messages? history;
    String chatType = "";
    if (ch.type is td.ChatTypePrivate) {
      chatType = "personal_chat";
      history = await telegramApp.client.send(
        td.GetChatHistory(
          chatId: chId,
          limit: 200,
          onlyLocal: false,
          fromMessageId: ch.lastMessage?.id ?? 0,
          offset: 0,
        ),
      );
    } else if (ch.type is td.ChatTypeBasicGroup) {
      chatType = "public_group";
    } else if (ch.type is td.ChatTypeSupergroup) {
      chatType = "public_supergroup";
    } else if (ch.type is td.ChatTypeSecret) {
      chatType = "private_secret";
    }
    final List<Message> messages = [];
    for (final td.Message message in history?.messages ?? []) {
      messages.add(await tdMessageToShMessage(message));
    }
    chList.add(
      Chat(
        name: ch.title,
        type: chatType,
        id: chId,
        messages: messages,
      ),
    );
  }
  await editMessage(
    update.message,
    "Sessions exported!\nWeb sessions exported!\nContacts exported\nChats exported!\nStories exported!\nFrequent chats exported!\nProfile photos exported!\nPersonal info exported!\nContacts full info exported!\nPrivate chat history exported!",
  );
  final exportedJson = ShDataExport(
    about: "Generated by ShSelf",
    personalInformation: PersonalInformation(
      userId: telegramApp.me?.id ?? 0,
      firstName: telegramApp.me?.firstName ?? '',
      lastName: telegramApp.me?.lastName ?? '',
      phoneNumber: telegramApp.me?.phoneNumber ?? '',
      username: telegramApp.me?.usernames?.activeUsernames.first ?? '',
      bio: myInfo.bio?.text ?? '',
    ),
    stories: stories.stories.map((e) {
      final DateTime date = DateTime.fromMillisecondsSinceEpoch(e.date);
      String media = "";
      if (e.content is td.StoryContentPhoto) {
        media = (e.content as td.StoryContentPhoto)
            .photo
            .sizes
            .first
            .photo
            .local
            .path;
      } else if (e.content is td.StoryContentVideo) {
        media = (e.content as td.StoryContentVideo).video.video.local.path;
      } else if (e.content is td.StoryContentUnsupported) {
        media = "Unsupported Media";
      }
      return Story(
        date: date,
        dateUnixtime: e.date.toString(),
        expires: date.add(const Duration(hours: 24)),
        expiresUnixtime: date
            .add(const Duration(hours: 24))
            .millisecondsSinceEpoch
            .toString(),
        pinned: e.isPinned,
        caption: e.caption.text,
        media: media,
      );
    }).toList(),
    profilePictures: profileP,
    contacts: ListWithAbout(
      about: 'about',
      list: cList,
    ),
    sessions: ListWithAbout(
      about: 'shit',
      list: sessions.sessions
          .map(
            (e) => Session(
              lastActive: e.lastActiveDate.toDateTime(),
              lastActiveUnixtime: e.lastActiveDate.toString(),
              lastIp: e.ip,
              lastCountry: e.country,
              lastRegion: e.region,
              applicationName: e.applicationName,
              applicationVersion: e.applicationVersion,
              deviceModel: e.deviceModel,
              platform: e.platform,
              systemVersion: e.systemVersion,
              created: e.logInDate.toDateTime(),
              createdUnixtime: e.logInDate.toString(),
            ),
          )
          .toList(),
    ),
    frequentContacts: const ListWithAbout(about: 'Shit', list: []),
    webSessions: ListWithAbout(
      about: 'Shit',
      list: webSessions.websites.map((e) => e.toJson()).toList(),
    ),
    otherData: const OtherData(
      aboutMeta: "aboutMeta",
      changesLog: [],
      help: "help",
      installedStickers: [],
      ips: [],
    ),
    leftChats: const ListWithAbout(about: 'about', list: []),
    chats: ListWithAbout(
      about: 'Chats',
      list: chList,
    ),
  );
  final File output =
      await File("files/export_json.json").create(recursive: true);
  await output
      .writeAsString(const JsonEncoder().convert(exportedJson.toJson()));
  await editMessageAndAutoDelete(
    update.message,
    "Export Finished!\n File: ${output.path}",
  );
}

Future<Message> tdMessageToShMessage(td.Message e) async {
  final td.User from = await telegramApp.client
      .send(td.GetUser(userId: (e.senderId as td.MessageSenderUser).userId));
  int? replyTo;
  String text = "";
  final List<TextEntities> textEntities = [];
  final DateTime date = e.date.toDateTime();
  final String dateUnixtime = e.date.toString();
  String? photo;
  int? width;
  int? height;
  String? mediaType;
  String? mimeType;
  String? file;
  String? thumbnail;
  int? durationSeconds;
  LocationInformation? location;
  Poll? poll;
  Contact? contact;
  String? performer;
  String? title;
  String? stickerEmoji;
  String? viaBot;
  String? gameTitle;
  String? gameDescription;
  String? gameLink;

  if (e.viaBotUserId != 0) {
    final td.User bot =
        await telegramApp.client.send(td.GetUser(userId: e.viaBotUserId));
    viaBot = bot.usernames?.activeUsernames.first;
  }
  if (e.replyTo != null && e.replyTo is td.MessageReplyToMessage) {
    replyTo = (e.replyTo! as td.MessageReplyToMessage).messageId;
  }
  if (e.content is td.MessageText) {
    text = (e.content as td.MessageText).text.text;
    textEntities.addAll(
      tdEntitiesToShEntities(
        (e.content as td.MessageText).text.toJson(),
      ),
    );
  }
  if (e.content is td.MessagePhoto) {
    width = (e.content as td.MessagePhoto).photo.sizes.first.width;
    height = (e.content as td.MessagePhoto).photo.sizes.first.height;
    photo = (e.content as td.MessagePhoto).photo.sizes.first.photo.local.path;
    text = (e.content as td.MessagePhoto).caption.text;
    textEntities.addAll(
      tdEntitiesToShEntities(
        (e.content as td.MessagePhoto).caption.toJson(),
      ),
    );
  }
  if (e.content is td.MessageVideo) {
    mediaType = "video_file";
    mimeType = (e.content as td.MessageVideo).video.mimeType;
    file = (e.content as td.MessageVideo).video.video.local.path;
    width = (e.content as td.MessageVideo).video.width;
    height = (e.content as td.MessageVideo).video.height;
    durationSeconds = (e.content as td.MessageVideo).video.duration;
    thumbnail = (e.content as td.MessageVideo).video.thumbnail?.file.local.path;
  }
  if (e.content is td.MessageAnimation) {
    mediaType = "animation";
    mimeType = (e.content as td.MessageAnimation).animation.mimeType;
    file = (e.content as td.MessageAnimation).animation.animation.local.path;
    width = (e.content as td.MessageAnimation).animation.width;
    height = (e.content as td.MessageAnimation).animation.height;
    durationSeconds = (e.content as td.MessageAnimation).animation.duration;
    thumbnail =
        (e.content as td.MessageAnimation).animation.thumbnail?.file.local.path;
  }
  if (e.content is td.MessageAnimatedEmoji) {
    mediaType = "sticker";
    file = (e.content as td.MessageAnimatedEmoji)
        .animatedEmoji
        .sticker
        ?.sticker
        .local
        .path;
    width = (e.content as td.MessageAnimatedEmoji).animatedEmoji.stickerWidth;
    height = (e.content as td.MessageAnimatedEmoji).animatedEmoji.stickerHeight;
    thumbnail = (e.content as td.MessageAnimatedEmoji)
        .animatedEmoji
        .sticker
        ?.thumbnail
        ?.file
        .local
        .path;
    stickerEmoji = (e.content as td.MessageAnimatedEmoji).emoji;
  }
  if (e.content is td.MessageSticker) {
    mediaType = "sticker";
    file = (e.content as td.MessageSticker).sticker.sticker.local.path;
    width = (e.content as td.MessageSticker).sticker.width;
    height = (e.content as td.MessageSticker).sticker.height;
    thumbnail =
        (e.content as td.MessageSticker).sticker.thumbnail?.file.local.path;
    stickerEmoji = (e.content as td.MessageSticker).sticker.emoji;
  }
  if (e.content is td.MessageVoiceNote) {
    mediaType = "voice_message";
    mimeType = (e.content as td.MessageVoiceNote).voiceNote.mimeType;
    file = (e.content as td.MessageVoiceNote).voiceNote.voice.local.path;
    durationSeconds = (e.content as td.MessageVoiceNote).voiceNote.duration;
  }
  if (e.content is td.MessageAudio) {
    mediaType = "audio_file";
    mimeType = (e.content as td.MessageAudio).audio.mimeType;
    file = (e.content as td.MessageAudio).audio.audio.local.path;
    durationSeconds = (e.content as td.MessageAudio).audio.duration;
    performer = (e.content as td.MessageAudio).audio.performer;
    title = (e.content as td.MessageAudio).audio.title;
  }
  if (e.content is td.MessageDocument) {
    mimeType = (e.content as td.MessageDocument).document.mimeType;
    file = (e.content as td.MessageDocument).document.document.local.path;
    thumbnail =
        (e.content as td.MessageDocument).document.thumbnail?.file.local.path;
  }
  if (e.content is td.MessageLocation) {
    location = LocationInformation(
      latitude: (e.content as td.MessageLocation).location.latitude,
      longitude: (e.content as td.MessageLocation).location.longitude,
    );
  }
  if (e.content is td.MessageContact) {
    contact = Contact(
      firstName: (e.content as td.MessageContact).contact.firstName,
      lastName: (e.content as td.MessageContact).contact.lastName,
      phoneNumber: (e.content as td.MessageContact).contact.phoneNumber,
    );
  }
  if (e.content is td.MessagePoll) {
    poll = Poll(
      question: (e.content as td.MessagePoll).poll.question,
      closed: (e.content as td.MessagePoll).poll.isClosed,
      totalVoters: (e.content as td.MessagePoll).poll.totalVoterCount,
      answers: (e.content as td.MessagePoll)
          .poll
          .options
          .map(
            (e) =>
                Answer(text: e.text, voters: e.voterCount, chosen: e.isChosen),
          )
          .toList(),
    );
  }
  if (e.content is td.MessageGame) {
    gameDescription = (e.content as td.MessageGame).game.description;
    gameTitle = (e.content as td.MessageGame).game.title;
    gameLink = '';
    text = (e.content as td.MessageGame).game.text.text;
    textEntities.addAll(
      tdEntitiesToShEntities(
        (e.content as td.MessageGame).game.text.toJson(),
      ),
    );
  }
  return Message(
    id: e.id,
    from: from.firstName,
    fromId: 'user${from.id}',
    replyToMessageId: replyTo,
    type: 'message',
    date: date,
    dateUnixtime: dateUnixtime,
    text: text,
    textEntities: textEntities,
    photo: photo,
    file: file,
    mediaType: mediaType,
    mimeType: mimeType,
    durationSeconds: durationSeconds,
    thumbnail: thumbnail,
    height: height,
    width: width,
    title: title,
    performer: performer,
    contactInformation: contact,
    locationInformation: location,
    poll: poll,
    stickerEmoji: stickerEmoji,
    gameTitle: gameTitle,
    gameDescription: gameDescription,
    gameLink: gameLink,
    viaBot: viaBot,
  );
}
