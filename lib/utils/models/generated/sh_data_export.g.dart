// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of '../sh_data_export.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShDataExport _$$_ShDataExportFromJson(Map<String, dynamic> json) =>
    _$_ShDataExport(
      about: json['about'] as String,
      personalInformation: PersonalInformation.fromJson(
          json['personalInformation'] as Map<String, dynamic>,),
      profilePictures: (json['profilePictures'] as List<dynamic>)
          .map((e) => ProfilePicture.fromJson(e as Map<String, dynamic>))
          .toList(),
      stories: json['stories'] as List<dynamic>,
      contacts: Contacts.fromJson(json['contacts'] as Map<String, dynamic>),
      frequentContacts: FrequentContacts.fromJson(
          json['frequentContacts'] as Map<String, dynamic>,),
      sessions: Sessions.fromJson(json['sessions'] as Map<String, dynamic>),
      webSessions: Chats.fromJson(json['webSessions'] as Map<String, dynamic>),
      otherData: OtherData.fromJson(json['otherData'] as Map<String, dynamic>),
      chats: Chats.fromJson(json['chats'] as Map<String, dynamic>),
      leftChats: LeftChats.fromJson(json['leftChats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ShDataExportToJson(_$_ShDataExport instance) =>
    <String, dynamic>{
      'about': instance.about,
      'personalInformation': instance.personalInformation,
      'profilePictures': instance.profilePictures,
      'stories': instance.stories,
      'contacts': instance.contacts,
      'frequentContacts': instance.frequentContacts,
      'sessions': instance.sessions,
      'webSessions': instance.webSessions,
      'otherData': instance.otherData,
      'chats': instance.chats,
      'leftChats': instance.leftChats,
    };

_$_Chats _$$_ChatsFromJson(Map<String, dynamic> json) => _$_Chats(
      about: json['about'] as String,
      list: (json['list'] as List<dynamic>)
          .map((e) => ChatsList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ChatsToJson(_$_Chats instance) => <String, dynamic>{
      'about': instance.about,
      'list': instance.list,
    };

_$_ChatsList _$$_ChatsListFromJson(Map<String, dynamic> json) => _$_ChatsList(
      name: json['name'] as String?,
      type: json['type'] as String,
      id: json['id'] as int,
      messages: (json['messages'] as List<dynamic>)
          .map((e) => PurpleMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ChatsListToJson(_$_ChatsList instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'id': instance.id,
      'messages': instance.messages,
    };

_$_PurpleMessage _$$_PurpleMessageFromJson(Map<String, dynamic> json) =>
    _$_PurpleMessage(
      id: json['id'] as int,
      type: json['type'] as String,
      date: DateTime.parse(json['date'] as String),
      dateUnixtime: json['dateUnixtime'] as String,
      from: json['from'] as String?,
      fromId: json['fromId'] as String?,
      text: json['text'],
      textEntities: (json['textEntities'] as List<dynamic>)
          .map((e) => PurpleText.fromJson(e as Map<String, dynamic>))
          .toList(),
      edited: json['edited'] == null
          ? null
          : DateTime.parse(json['edited'] as String),
      editedUnixtime: json['editedUnixtime'] as String?,
      replyToMessageId: json['replyToMessageId'] as int?,
      photo: json['photo'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      actor: json['actor'] as String?,
      actorId: json['actorId'] as String?,
      action: json['action'] as String?,
      members:
          (json['members'] as List<dynamic>?)?.map((e) => e as String).toList(),
      file: json['file'] as String?,
      thumbnail: json['thumbnail'] as String?,
      mediaType: json['mediaType'] as String?,
      stickerEmoji: json['stickerEmoji'] as String?,
      mimeType: json['mimeType'] as String?,
      durationSeconds: json['durationSeconds'] as int?,
      forwardedFrom: json['forwardedFrom'] as String?,
      invoiceInformation: json['invoiceInformation'] as String?,
      savedFrom: json['savedFrom'] as String?,
      contactInformation: json['contactInformation'] == null
          ? null
          : ContactInformation.fromJson(
              json['contactInformation'] as Map<String, dynamic>,),
      messageId: json['messageId'] as int?,
      cost: json['cost'] as String?,
      months: json['months'] as int?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$_PurpleMessageToJson(_$_PurpleMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'date': instance.date.toIso8601String(),
      'dateUnixtime': instance.dateUnixtime,
      'from': instance.from,
      'fromId': instance.fromId,
      'text': instance.text,
      'textEntities': instance.textEntities,
      'edited': instance.edited?.toIso8601String(),
      'editedUnixtime': instance.editedUnixtime,
      'replyToMessageId': instance.replyToMessageId,
      'photo': instance.photo,
      'width': instance.width,
      'height': instance.height,
      'actor': instance.actor,
      'actorId': instance.actorId,
      'action': instance.action,
      'members': instance.members,
      'file': instance.file,
      'thumbnail': instance.thumbnail,
      'mediaType': instance.mediaType,
      'stickerEmoji': instance.stickerEmoji,
      'mimeType': instance.mimeType,
      'durationSeconds': instance.durationSeconds,
      'forwardedFrom': instance.forwardedFrom,
      'invoiceInformation': instance.invoiceInformation,
      'savedFrom': instance.savedFrom,
      'contactInformation': instance.contactInformation,
      'messageId': instance.messageId,
      'cost': instance.cost,
      'months': instance.months,
      'title': instance.title,
    };

_$_ContactInformation _$$_ContactInformationFromJson(
        Map<String, dynamic> json,) =>
    _$_ContactInformation(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      phoneNumber: json['phoneNumber'] as String,
    );

Map<String, dynamic> _$$_ContactInformationToJson(
        _$_ContactInformation instance,) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
    };

_$_PurpleText _$$_PurpleTextFromJson(Map<String, dynamic> json) =>
    _$_PurpleText(
      type: json['type'] as String,
      text: json['text'] as String,
      documentId: json['documentId'] as String?,
      href: json['href'] as String?,
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$$_PurpleTextToJson(_$_PurpleText instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
      'documentId': instance.documentId,
      'href': instance.href,
      'userId': instance.userId,
    };

_$_Contacts _$$_ContactsFromJson(Map<String, dynamic> json) => _$_Contacts(
      about: json['about'] as String,
      list: (json['list'] as List<dynamic>)
          .map((e) => ContactsList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ContactsToJson(_$_Contacts instance) =>
    <String, dynamic>{
      'about': instance.about,
      'list': instance.list,
    };

_$_ContactsList _$$_ContactsListFromJson(Map<String, dynamic> json) =>
    _$_ContactsList(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      date: DateTime.parse(json['date'] as String),
      dateUnixtime: json['dateUnixtime'] as String,
    );

Map<String, dynamic> _$$_ContactsListToJson(_$_ContactsList instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'date': instance.date.toIso8601String(),
      'dateUnixtime': instance.dateUnixtime,
    };

_$_FrequentContacts _$$_FrequentContactsFromJson(Map<String, dynamic> json) =>
    _$_FrequentContacts(
      about: json['about'] as String,
      list: (json['list'] as List<dynamic>)
          .map((e) => FrequentContactsList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FrequentContactsToJson(_$_FrequentContacts instance) =>
    <String, dynamic>{
      'about': instance.about,
      'list': instance.list,
    };

_$_FrequentContactsList _$$_FrequentContactsListFromJson(
        Map<String, dynamic> json,) =>
    _$_FrequentContactsList(
      id: json['id'] as int,
      category: json['category'] as String,
      type: json['type'] as String,
      name: json['name'] as String,
      rating: (json['rating'] as num).toDouble(),
    );

Map<String, dynamic> _$$_FrequentContactsListToJson(
        _$_FrequentContactsList instance,) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'type': instance.type,
      'name': instance.name,
      'rating': instance.rating,
    };

_$_LeftChats _$$_LeftChatsFromJson(Map<String, dynamic> json) => _$_LeftChats(
      about: json['about'] as String,
      list: (json['list'] as List<dynamic>)
          .map((e) => LeftChatsList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LeftChatsToJson(_$_LeftChats instance) =>
    <String, dynamic>{
      'about': instance.about,
      'list': instance.list,
    };

_$_LeftChatsList _$$_LeftChatsListFromJson(Map<String, dynamic> json) =>
    _$_LeftChatsList(
      name: json['name'] as String,
      type: json['type'] as String,
      id: json['id'] as int,
      messages: (json['messages'] as List<dynamic>)
          .map((e) => FluffyMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LeftChatsListToJson(_$_LeftChatsList instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'id': instance.id,
      'messages': instance.messages,
    };

_$_FluffyMessage _$$_FluffyMessageFromJson(Map<String, dynamic> json) =>
    _$_FluffyMessage(
      id: json['id'] as int,
      type: json['type'] as String,
      date: DateTime.parse(json['date'] as String),
      dateUnixtime: json['dateUnixtime'] as String,
      from: json['from'] as String,
      fromId: json['fromId'] as String,
      text: json['text'],
      textEntities: (json['textEntities'] as List<dynamic>)
          .map((e) => FluffyText.fromJson(e as Map<String, dynamic>))
          .toList(),
      replyToMessageId: json['replyToMessageId'] as int?,
      edited: json['edited'] == null
          ? null
          : DateTime.parse(json['edited'] as String),
      editedUnixtime: json['editedUnixtime'] as String?,
      photo: json['photo'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      file: json['file'] as String?,
      thumbnail: json['thumbnail'] as String?,
      mediaType: json['mediaType'] as String?,
      mimeType: json['mimeType'] as String?,
      durationSeconds: json['durationSeconds'] as int?,
    );

Map<String, dynamic> _$$_FluffyMessageToJson(_$_FluffyMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'date': instance.date.toIso8601String(),
      'dateUnixtime': instance.dateUnixtime,
      'from': instance.from,
      'fromId': instance.fromId,
      'text': instance.text,
      'textEntities': instance.textEntities,
      'replyToMessageId': instance.replyToMessageId,
      'edited': instance.edited?.toIso8601String(),
      'editedUnixtime': instance.editedUnixtime,
      'photo': instance.photo,
      'width': instance.width,
      'height': instance.height,
      'file': instance.file,
      'thumbnail': instance.thumbnail,
      'mediaType': instance.mediaType,
      'mimeType': instance.mimeType,
      'durationSeconds': instance.durationSeconds,
    };

_$_FluffyText _$$_FluffyTextFromJson(Map<String, dynamic> json) =>
    _$_FluffyText(
      type: json['type'] as String,
      text: json['text'] as String,
      documentId: json['documentId'] as String?,
    );

Map<String, dynamic> _$$_FluffyTextToJson(_$_FluffyText instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
      'documentId': instance.documentId,
    };

_$_OtherData _$$_OtherDataFromJson(Map<String, dynamic> json) => _$_OtherData(
      aboutMeta: json['aboutMeta'] as String,
      changesLog: json['changesLog'] as List<dynamic>,
      help: json['help'] as String,
      installedStickers: (json['installedStickers'] as List<dynamic>)
          .map((e) => InstalledSticker.fromJson(e as Map<String, dynamic>))
          .toList(),
      ips: (json['ips'] as List<dynamic>)
          .map((e) => Ip.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OtherDataToJson(_$_OtherData instance) =>
    <String, dynamic>{
      'aboutMeta': instance.aboutMeta,
      'changesLog': instance.changesLog,
      'help': instance.help,
      'installedStickers': instance.installedStickers,
      'ips': instance.ips,
    };

_$_InstalledSticker _$$_InstalledStickerFromJson(Map<String, dynamic> json) =>
    _$_InstalledSticker(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_InstalledStickerToJson(_$_InstalledSticker instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

_$_Ip _$$_IpFromJson(Map<String, dynamic> json) => _$_Ip(
      ip: json['ip'] as String,
    );

Map<String, dynamic> _$$_IpToJson(_$_Ip instance) => <String, dynamic>{
      'ip': instance.ip,
    };

_$_PersonalInformation _$$_PersonalInformationFromJson(
        Map<String, dynamic> json,) =>
    _$_PersonalInformation(
      userId: json['userId'] as int,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      username: json['username'] as String,
      bio: json['bio'] as String,
    );

Map<String, dynamic> _$$_PersonalInformationToJson(
        _$_PersonalInformation instance,) =>
    <String, dynamic>{
      'userId': instance.userId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'username': instance.username,
      'bio': instance.bio,
    };

_$_ProfilePicture _$$_ProfilePictureFromJson(Map<String, dynamic> json) =>
    _$_ProfilePicture(
      date: DateTime.parse(json['date'] as String),
      dateUnixtime: json['dateUnixtime'] as String,
      photo: json['photo'] as String,
    );

Map<String, dynamic> _$$_ProfilePictureToJson(_$_ProfilePicture instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'dateUnixtime': instance.dateUnixtime,
      'photo': instance.photo,
    };

_$_Sessions _$$_SessionsFromJson(Map<String, dynamic> json) => _$_Sessions(
      about: json['about'] as String,
      list: (json['list'] as List<dynamic>)
          .map((e) => SessionsList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SessionsToJson(_$_Sessions instance) =>
    <String, dynamic>{
      'about': instance.about,
      'list': instance.list,
    };

_$_SessionsList _$$_SessionsListFromJson(Map<String, dynamic> json) =>
    _$_SessionsList(
      lastActive: DateTime.parse(json['lastActive'] as String),
      lastActiveUnixtime: json['lastActiveUnixtime'] as String,
      lastIp: json['lastIp'] as String,
      lastCountry: json['lastCountry'] as String,
      lastRegion: json['lastRegion'] as String,
      applicationName: json['applicationName'] as String,
      applicationVersion: json['applicationVersion'] as String,
      deviceModel: json['deviceModel'] as String,
      platform: json['platform'] as String,
      systemVersion: json['systemVersion'] as String,
      created: DateTime.parse(json['created'] as String),
      createdUnixtime: json['createdUnixtime'] as String,
    );

Map<String, dynamic> _$$_SessionsListToJson(_$_SessionsList instance) =>
    <String, dynamic>{
      'lastActive': instance.lastActive.toIso8601String(),
      'lastActiveUnixtime': instance.lastActiveUnixtime,
      'lastIp': instance.lastIp,
      'lastCountry': instance.lastCountry,
      'lastRegion': instance.lastRegion,
      'applicationName': instance.applicationName,
      'applicationVersion': instance.applicationVersion,
      'deviceModel': instance.deviceModel,
      'platform': instance.platform,
      'systemVersion': instance.systemVersion,
      'created': instance.created.toIso8601String(),
      'createdUnixtime': instance.createdUnixtime,
    };
