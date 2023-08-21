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
      await telegramApp.client.send(const td.GetChats(limit: 200));
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
    final int fileId = ph.sizes.first.photo.id;

    if (fileId == 0) return;
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
  final List<FrequentContact> frequents = [];
  for (final int chId in topChats.chatIds) {
    final td.Chat ch = await telegramApp.client.send(td.GetChat(chatId: chId));
    frequents.add(
      FrequentContact(
        id: ch.id,
        category: "peaople",
        type: "user",
        name: ch.title,
        rating: 1.0,
      ),
    );
  }
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
          limit: 100,
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
      messages.add(await tdMessageToShMessage(update.message, message));
    }
    chList.add(
      Chat(
        name: ch.title,
        type: chatType,
        id: chId,
        messages: messages.reversed.toList(),
      ),
    );
  }
  await editMessage(
    update.message,
    "Sessions exported!\nWeb sessions exported!\nContacts exported\nChats exported!\nStories exported!\nFrequent chats exported!\nProfile photos exported!\nPersonal info exported!\nContacts full info exported!\nPrivate chat history exported!",
  );
  final td.StickerSets ssets = await telegramApp.client.send(
    const td.GetInstalledStickerSets(stickerType: td.StickerTypeRegular()),
  );
  final exportedJson = ShDataExport(
    about:
        "Generated by ShSelf\nHere is the data you requested. Remember: Telegram is ad free, it doesn't use your data for ad targeting and doesn't sell it to others. Telegram only keeps the information it needs to function as a secure and feature-rich cloud service.\n\nCheck out Settings > Privacy & Security on Telegram's mobile apps for the relevant settings.",
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
      about:
          "If you allow access, your contacts are continuously synced with Telegram. Thanks to this, you can easily switch to Telegram and immediately connect with friends across all your devices. We use data about your contacts to let you know when they join Telegram, and to display them by the name you set for them in your phone.\n\nYou can disable contact syncing or delete your stored contacts in Settings > Privacy & Security on Telegram's mobile apps.",
      list: cList,
    ),
    sessions: ListWithAbout(
      about:
          'We store session info to display your connected devices in Settings > Privacy & Security > Active Sessions.',
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
    frequentContacts: ListWithAbout(
      about:
          "This rating shows which people you are likelier to message frequently. Telegram uses this data to populate the 'People' box at the top of the Search section. This rating is also calculated for inline bots so that the app can suggest the bots you are most likely to use in the attachment menu (or when you start a new message with \"@\").\n\nTo delete this data, go to Settings > Privacy & Security and disable 'Suggest Frequent Contacts' (requires Telegram for iOS v.4.8.3 or Telegram for Android v.4.8.10 or higher).",
      list: frequents,
    ),
    webSessions: ListWithAbout(
      about:
          'We store this to display the websites where you logged in using authentication via Telegram. This information is shown in Settings > Privacy & Security > Active Sessions.',
      list: webSessions.websites.map((e) => e.toJson()).toList(),
    ),
    otherData: OtherData(
      aboutMeta:
          "We may collect data such as your IP address, history of username and phone number changes to prevent spam, abuse, and other violations of our Terms of Service. If collected, this data can be kept for 12 months maximum.",
      changesLog: [],
      help:
          "You are using the beta version of the data exporting feature. Unfortunately, this version does not support displaying the data from this section in a more human-friendly way. This will be supported in the next updates",
      installedStickers:
          ssets.sets.map((e) => InstalledSticker(url: e.title)).toList(),
      ips: sessions.sessions.map((e) => Ip(ip: e.ip)).toList(),
    ),
    leftChats: const ListWithAbout(
      about:
          "Below are the supergroups and channels from this export that you've left or where you were banned.\n\nNote that when you leave a channel or supergroup you've created, you have the option to either delete it, or simply leave (in case you want to rejoin later, or keep the community alive despite not being a member).",
      list: [],
    ),
    chats: ListWithAbout(
      about: 'This page lists all chats from this export.',
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

Future<Message> tdMessageToShMessage(td.Message incoming, td.Message e) async {
  final td.User from = await telegramApp.client
      .send(td.GetUser(userId: (e.senderId as td.MessageSenderUser).userId));
  int? replyTo;
  String? forwardedFrom;
  if (e.forwardInfo != null && e.forwardInfo!.fromChatId != 0) {
    final td.Chat c = await telegramApp.client
        .send(td.GetChat(chatId: e.forwardInfo!.fromChatId));
    forwardedFrom = c.title;
  }
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
      await tdEntitiesToShEntities(
        (e.content as td.MessageText).text.toJson(),
      ),
    );
  }
  if (e.content is td.MessagePhoto) {
    final td.PhotoSize s = (e.content as td.MessagePhoto).photo.sizes.first;
    if (s.photo.size != 0 && s.photo.size.bytesToMegabytes() < 5.0) {
      await telegramApp.client.send(
        td.DownloadFile(
          fileId: s.photo.id,
          priority: 1,
          synchronous: true,
          offset: 0,
          limit: 0,
        ),
      );
    }
    width = (e.content as td.MessagePhoto).photo.sizes.first.width;
    height = (e.content as td.MessagePhoto).photo.sizes.first.height;
    photo = (e.content as td.MessagePhoto).photo.sizes.first.photo.local.path;
    text = (e.content as td.MessagePhoto).caption.text;
    textEntities.addAll(
      await tdEntitiesToShEntities(
        (e.content as td.MessagePhoto).caption.toJson(),
      ),
    );
  }
  if (e.content is td.MessageVideo) {
    if ((e.content as td.MessageVideo).video.video.size != 0 &&
        (e.content as td.MessageVideo).video.video.size.bytesToMegabytes() <
            5.0) {
      await telegramApp.client.send(
        td.DownloadFile(
          fileId: (e.content as td.MessageVideo).video.video.id,
          priority: 1,
          synchronous: true,
          offset: 0,
          limit: 0,
        ),
      );
    }
    if ((e.content as td.MessageVideo).video.thumbnail?.file.size != 0 &&
        (e.content as td.MessageVideo)
                .video
                .thumbnail!
                .file
                .size
                .bytesToMegabytes() <
            5.0) {
      await telegramApp.client.send(
        td.DownloadFile(
          fileId: (e.content as td.MessageVideo).video.thumbnail!.file.id,
          priority: 1,
          synchronous: true,
          offset: 0,
          limit: 0,
        ),
      );
    }
    mediaType = "video_file";
    mimeType = (e.content as td.MessageVideo).video.mimeType;
    file = (e.content as td.MessageVideo).video.video.local.path;
    width = (e.content as td.MessageVideo).video.width;
    height = (e.content as td.MessageVideo).video.height;
    durationSeconds = (e.content as td.MessageVideo).video.duration;
    thumbnail = (e.content as td.MessageVideo).video.thumbnail?.file.local.path;
  }
  if (e.content is td.MessageAnimation) {
    if ((e.content as td.MessageAnimation).animation.animation.size != 0 &&
        (e.content as td.MessageAnimation)
                .animation
                .animation
                .size
                .bytesToMegabytes() <
            5.0) {
      await telegramApp.client.send(
        td.DownloadFile(
          fileId: (e.content as td.MessageAnimation).animation.animation.id,
          priority: 1,
          synchronous: true,
          offset: 0,
          limit: 0,
        ),
      );
    }
    if ((e.content as td.MessageAnimation).animation.thumbnail?.file.size !=
            0 &&
        (e.content as td.MessageAnimation)
                .animation
                .thumbnail!
                .file
                .size
                .bytesToMegabytes() <
            5.0) {
      await telegramApp.client.send(
        td.DownloadFile(
          fileId:
              (e.content as td.MessageAnimation).animation.thumbnail!.file.id,
          priority: 1,
          synchronous: true,
          offset: 0,
          limit: 0,
        ),
      );
    }
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
    if ((e.content as td.MessageAnimatedEmoji).animatedEmoji.sticker != null) {
      if ((e.content as td.MessageAnimatedEmoji)
                  .animatedEmoji
                  .sticker
                  ?.sticker
                  .size !=
              0 &&
          (e.content as td.MessageAnimatedEmoji)
                  .animatedEmoji
                  .sticker!
                  .sticker
                  .size
                  .bytesToMegabytes() <
              5.0) {
        await telegramApp.client.send(
          td.DownloadFile(
            fileId: (e.content as td.MessageAnimatedEmoji)
                    .animatedEmoji
                    .sticker
                    ?.sticker
                    .id ??
                0,
            priority: 1,
            synchronous: true,
            offset: 0,
            limit: 0,
          ),
        );
      }
    }
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
    if ((e.content as td.MessageSticker).sticker.sticker.size != 0 &&
        (e.content as td.MessageSticker)
                .sticker
                .sticker
                .size
                .bytesToMegabytes() <
            5.0) {
      await telegramApp.client.send(
        td.DownloadFile(
          fileId: (e.content as td.MessageSticker).sticker.sticker.id,
          priority: 1,
          synchronous: true,
          offset: 0,
          limit: 0,
        ),
      );
    }
    mediaType = "sticker";
    file = (e.content as td.MessageSticker).sticker.sticker.local.path;
    width = (e.content as td.MessageSticker).sticker.width;
    height = (e.content as td.MessageSticker).sticker.height;
    thumbnail =
        (e.content as td.MessageSticker).sticker.thumbnail?.file.local.path;
    stickerEmoji = (e.content as td.MessageSticker).sticker.emoji;
  }
  if (e.content is td.MessageVoiceNote) {
    if ((e.content as td.MessageVoiceNote).voiceNote.voice.size != 0 &&
        (e.content as td.MessageVoiceNote)
                .voiceNote
                .voice
                .size
                .bytesToMegabytes() <
            5.0) {
      await telegramApp.client.send(
        td.DownloadFile(
          fileId: (e.content as td.MessageVoiceNote).voiceNote.voice.id,
          priority: 1,
          synchronous: true,
          offset: 0,
          limit: 0,
        ),
      );
    }
    mediaType = "voice_message";
    mimeType = (e.content as td.MessageVoiceNote).voiceNote.mimeType;
    file = (e.content as td.MessageVoiceNote).voiceNote.voice.local.path;
    durationSeconds = (e.content as td.MessageVoiceNote).voiceNote.duration;
  }
  if (e.content is td.MessageAudio) {
    if ((e.content as td.MessageAudio).audio.audio.size != 0 &&
        (e.content as td.MessageAudio).audio.audio.size.bytesToMegabytes() <
            5.0) {
      await telegramApp.client.send(
        td.DownloadFile(
          fileId: (e.content as td.MessageAudio).audio.audio.id,
          priority: 1,
          synchronous: true,
          offset: 0,
          limit: 0,
        ),
      );
    }
    mediaType = "audio_file";
    mimeType = (e.content as td.MessageAudio).audio.mimeType;
    file = (e.content as td.MessageAudio).audio.audio.local.path;
    durationSeconds = (e.content as td.MessageAudio).audio.duration;
    performer = (e.content as td.MessageAudio).audio.performer;
    title = (e.content as td.MessageAudio).audio.title;
  }
  if (e.content is td.MessageDocument) {
    if ((e.content as td.MessageDocument).document.document.size != 0 &&
        (e.content as td.MessageDocument)
                .document
                .document
                .size
                .bytesToMegabytes() <
            5.0) {
      await telegramApp.client.send(
        td.DownloadFile(
          fileId: (e.content as td.MessageDocument).document.document.id,
          priority: 1,
          synchronous: true,
          offset: 0,
          limit: 0,
        ),
      );
    }
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
      await tdEntitiesToShEntities(
        (e.content as td.MessageGame).game.text.toJson(),
      ),
    );
  }
  return Message(
    id: e.id,
    from: from.firstName,
    fromId: 'user${from.id}',
    replyToMessageId: replyTo,
    forwardedFrom: forwardedFrom,
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
