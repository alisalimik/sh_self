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
    profileP.add(
      ProfilePicture(
        date: DateTime.fromMillisecondsSinceEpoch(ph.addedDate),
        dateUnixtime: ph.addedDate.toString(),
        photo: ph.toString(),
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
        dateUnixtime: DateTime.now().millisecondsSinceEpoch.toString(),
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
    if (ch.type is td.ChatTypePrivate) {
      history = await telegramApp.client.send(
        td.GetChatHistory(
          chatId: chId,
          limit: 200,
          onlyLocal: false,
          fromMessageId: ch.lastMessage?.id ?? 0,
          offset: 0,
        ),
      );
    }
    chList.add(
      Chat(
        name: ch.title,
        type: ch.type.toString(),
        id: chId,
        messages: history?.messages?.map((e) {
              final List<TextEntities> eList = [];
              if (e.content is td.MessageText) {
                for (final td.TextEntity tE
                    in (e.content as td.MessageText).text.entities) {
                  eList.add(
                    TextEntities(
                      type: tE.type.toString(),
                      text: tE.offset.toString(),
                    ),
                  );
                }
                return Message(
                  id: e.id,
                  type: "message",
                  date: DateTime.fromMillisecondsSinceEpoch(e.date),
                  dateUnixtime: e.date.toString(),
                  text: (e.content as td.MessageText).text.text,
                  textEntities: eList,
                );
              } else if (e.content is td.MessagePhoto) {
                return Message(
                    id: e.id,
                    type: "photo",
                    date: DateTime.fromMillisecondsSinceEpoch(e.date),
                    dateUnixtime: e.date.toString(),
                    text: '',
                    textEntities: [],);
              }
              return Message(
                  id: 0,
                  type: 'message',
                  date: DateTime.fromMillisecondsSinceEpoch(e.date),
                  dateUnixtime: e.date.toString(),
                  text: 'text',
                  textEntities: [],);
            }).toList() ??
            [],
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
    stories: stories.stories.map((e) => e.toJson()).toList(),
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
              lastActive: DateTime.fromMillisecondsSinceEpoch(e.lastActiveDate),
              lastActiveUnixtime: e.lastActiveDate.toString(),
              lastIp: e.ip,
              lastCountry: e.country,
              lastRegion: e.region,
              applicationName: e.applicationName,
              applicationVersion: e.applicationVersion,
              deviceModel: e.deviceModel,
              platform: e.platform,
              systemVersion: e.systemVersion,
              created: DateTime.fromMillisecondsSinceEpoch(e.logInDate),
              createdUnixtime: e.logInDate.toString(),
            ),
          )
          .toList(),
    ),
    frequentContacts: const ListWithAbout(about: 'Shit', list: []),
    webSessions: ListWithAbout(about: 'Shit', list: webSessions.websites.map((e) => e.toJson()).toList()),
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
