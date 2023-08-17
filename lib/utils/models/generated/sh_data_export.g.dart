// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element, non_constant_identifier_names, cast_nullable_to_non_nullable

part of '../sh_data_export.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListWithAbout<T> _$ListWithAboutFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ListWithAbout<T>(
      about: json['about'] as String,
      list: (json['list'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$ListWithAboutToJson<T>(
  ListWithAbout<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'about': instance.about,
      'list': instance.list.map(toJsonT).toList(),
    };

_$_ShDataExport _$$_ShDataExportFromJson(Map<String, dynamic> json) =>
    _$_ShDataExport(
      about: json['about'] as String,
      personalInformation: PersonalInformation.fromJson(
          json['personalInformation'] as Map<String, dynamic>,),
      profilePictures: (json['profilePictures'] as List<dynamic>)
          .map((e) => ProfilePicture.fromJson(e as Map<String, dynamic>))
          .toList(),
      stories: json['stories'] as List<dynamic>,
      contacts: ListWithAbout<Contact>.fromJson(
          json['contacts'] as Map<String, dynamic>,
          (value) => Contact.fromJson(value as Map<String, dynamic>),),
      frequentContacts: ListWithAbout<Contact>.fromJson(
          json['frequentContacts'] as Map<String, dynamic>,
          (value) => Contact.fromJson(value as Map<String, dynamic>),),
      sessions: ListWithAbout<Session>.fromJson(
          json['sessions'] as Map<String, dynamic>,
          (value) => Session.fromJson(value as Map<String, dynamic>),),
      webSessions: ListWithAbout<String>.fromJson(
          json['webSessions'] as Map<String, dynamic>,
          (value) => value as String,),
      otherData: OtherData.fromJson(json['otherData'] as Map<String, dynamic>),
      chats: ListWithAbout<Chat>.fromJson(json['chats'] as Map<String, dynamic>,
          (value) => Chat.fromJson(value as Map<String, dynamic>),),
      leftChats: ListWithAbout<Chat>.fromJson(
          json['leftChats'] as Map<String, dynamic>,
          (value) => Chat.fromJson(value as Map<String, dynamic>),),
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

_$_Chat _$$_ChatFromJson(Map<String, dynamic> json) => _$_Chat(
      name: json['name'] as String?,
      type: json['type'] as String,
      id: json['id'] as int,
      messages: (json['messages'] as List<dynamic>)
          .map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ChatToJson(_$_Chat instance) => <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'id': instance.id,
      'messages': instance.messages,
    };

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      id: json['id'] as int,
      type: json['type'] as String,
      date: DateTime.parse(json['date'] as String),
      dateUnixtime: json['dateUnixtime'] as String,
      from: json['from'] as String?,
      fromId: json['fromId'] as String?,
      text: json['text'],
      textEntities: (json['textEntities'] as List<dynamic>)
          .map((e) => TextEntities.fromJson(e as Map<String, dynamic>))
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
          : Contact.fromJson(
              json['contactInformation'] as Map<String, dynamic>,),
      messageId: json['messageId'] as int?,
      cost: json['cost'] as String?,
      months: json['months'] as int?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
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

_$_TextEntities _$$_TextEntitiesFromJson(Map<String, dynamic> json) =>
    _$_TextEntities(
      type: json['type'] as String,
      text: json['text'] as String,
      documentId: json['documentId'] as String?,
      href: json['href'] as String?,
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$$_TextEntitiesToJson(_$_TextEntities instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
      'documentId': instance.documentId,
      'href': instance.href,
      'userId': instance.userId,
    };

_$_Contact _$$_ContactFromJson(Map<String, dynamic> json) => _$_Contact(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      date: DateTime.parse(json['date'] as String),
      dateUnixtime: json['dateUnixtime'] as String,
    );

Map<String, dynamic> _$$_ContactToJson(_$_Contact instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'date': instance.date.toIso8601String(),
      'dateUnixtime': instance.dateUnixtime,
    };

_$_OtherData _$$_OtherDataFromJson(Map<String, dynamic> json) => _$_OtherData(
      aboutMeta: json['aboutMeta'] as String,
      changesLog: json['changesLog'] as List<dynamic>,
      help: json['help'] as String,
      installedStickers: (json['installedStickers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      ips: (json['ips'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_OtherDataToJson(_$_OtherData instance) =>
    <String, dynamic>{
      'aboutMeta': instance.aboutMeta,
      'changesLog': instance.changesLog,
      'help': instance.help,
      'installedStickers': instance.installedStickers,
      'ips': instance.ips,
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

_$_Session _$$_SessionFromJson(Map<String, dynamic> json) => _$_Session(
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

Map<String, dynamic> _$$_SessionToJson(_$_Session instance) =>
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
