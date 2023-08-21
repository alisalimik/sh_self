// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: cast_nullable_to_non_nullable, non_constant_identifier_names

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
        json['personal_information'] as Map<String, dynamic>,
      ),
      profilePictures: (json['profile_pictures'] as List<dynamic>)
          .map((e) => ProfilePicture.fromJson(e as Map<String, dynamic>))
          .toList(),
      stories: (json['stories'] as List<dynamic>)
          .map((e) => Story.fromJson(e as Map<String, dynamic>))
          .toList(),
      contacts: ListWithAbout<Contact>.fromJson(
        json['contacts'] as Map<String, dynamic>,
        (value) => Contact.fromJson(value as Map<String, dynamic>),
      ),
      frequentContacts: ListWithAbout<FrequentContact>.fromJson(
        json['frequent_contacts'] as Map<String, dynamic>,
        (value) => FrequentContact.fromJson(value as Map<String, dynamic>),
      ),
      sessions: ListWithAbout<Session>.fromJson(
        json['sessions'] as Map<String, dynamic>,
        (value) => Session.fromJson(value as Map<String, dynamic>),
      ),
      webSessions: ListWithAbout<Map<String, dynamic>>.fromJson(
        json['web_sessions'] as Map<String, dynamic>,
        (value) => value as Map<String, dynamic>,
      ),
      otherData: OtherData.fromJson(json['other_data'] as Map<String, dynamic>),
      chats: ListWithAbout<Chat>.fromJson(
        json['chats'] as Map<String, dynamic>,
        (value) => Chat.fromJson(value as Map<String, dynamic>),
      ),
      leftChats: ListWithAbout<Chat>.fromJson(
        json['left_chats'] as Map<String, dynamic>,
        (value) => Chat.fromJson(value as Map<String, dynamic>),
      ),
    );

Map<String, dynamic> _$$_ShDataExportToJson(_$_ShDataExport instance) =>
    <String, dynamic>{
      'about': instance.about,
      'personal_information': instance.personalInformation.toJson(),
      'profile_pictures':
          instance.profilePictures.map((e) => e.toJson()).toList(),
      'stories': instance.stories.map((e) => e.toJson()).toList(),
      'contacts': instance.contacts.toJson(
        (value) => value.toJson(),
      ),
      'frequent_contacts': instance.frequentContacts.toJson(
        (value) => value.toJson(),
      ),
      'sessions': instance.sessions.toJson(
        (value) => value.toJson(),
      ),
      'web_sessions': instance.webSessions.toJson(
        (value) => value,
      ),
      'other_data': instance.otherData.toJson(),
      'chats': instance.chats.toJson(
        (value) => value.toJson(),
      ),
      'left_chats': instance.leftChats.toJson(
        (value) => value.toJson(),
      ),
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
      'messages': instance.messages.map((e) => e.toJson()).toList(),
    };

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      id: json['id'] as int,
      type: json['type'] as String,
      date: DateTime.parse(json['date'] as String),
      dateUnixtime: json['date_unixtime'] as String,
      from: json['from'] as String,
      fromId: json['from_id'] as String,
      replyToMessageId: json['reply_to_message_id'] as int?,
      forwardedFrom: json['forwarded_from'] as String?,
      text: json['text'],
      textEntities: (json['text_entities'] as List<dynamic>)
          .map((e) => TextEntities.fromJson(e as Map<String, dynamic>))
          .toList(),
      photo: json['photo'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      file: json['file'] as String?,
      thumbnail: json['thumbnail'] as String?,
      mediaType: json['media_type'] as String?,
      mimeType: json['mime_type'] as String?,
      durationSeconds: json['duration_seconds'] as int?,
      stickerEmoji: json['sticker_emoji'] as String?,
      locationInformation: json['location_information'] == null
          ? null
          : LocationInformation.fromJson(
              json['location_information'] as Map<String, dynamic>,
            ),
      poll: json['poll'] == null
          ? null
          : Poll.fromJson(json['poll'] as Map<String, dynamic>),
      contactInformation: json['contact_information'] == null
          ? null
          : Contact.fromJson(
              json['contact_information'] as Map<String, dynamic>,
            ),
      viaBot: json['via_bot'] as String?,
      gameTitle: json['game_title'] as String?,
      gameDescription: json['game_description'] as String?,
      gameLink: json['game_link'] as String?,
      performer: json['performer'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'date': instance.date.toIso8601String(),
      'date_unixtime': instance.dateUnixtime,
      'from': instance.from,
      'from_id': instance.fromId,
      'reply_to_message_id': instance.replyToMessageId,
      'forwarded_from': instance.forwardedFrom,
      'text': instance.text,
      'text_entities': instance.textEntities.map((e) => e.toJson()).toList(),
      'photo': instance.photo,
      'width': instance.width,
      'height': instance.height,
      'file': instance.file,
      'thumbnail': instance.thumbnail,
      'media_type': instance.mediaType,
      'mime_type': instance.mimeType,
      'duration_seconds': instance.durationSeconds,
      'sticker_emoji': instance.stickerEmoji,
      'location_information': instance.locationInformation?.toJson(),
      'poll': instance.poll?.toJson(),
      'contact_information': instance.contactInformation?.toJson(),
      'via_bot': instance.viaBot,
      'game_title': instance.gameTitle,
      'game_description': instance.gameDescription,
      'game_link': instance.gameLink,
      'performer': instance.performer,
      'title': instance.title,
    };

_$_LocationInformation _$$_LocationInformationFromJson(
  Map<String, dynamic> json,
) =>
    _$_LocationInformation(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$_LocationInformationToJson(
  _$_LocationInformation instance,
) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$_Poll _$$_PollFromJson(Map<String, dynamic> json) => _$_Poll(
      question: json['question'] as String,
      closed: json['closed'] as bool,
      totalVoters: json['total_voters'] as int,
      answers: (json['answers'] as List<dynamic>)
          .map((e) => Answer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PollToJson(_$_Poll instance) => <String, dynamic>{
      'question': instance.question,
      'closed': instance.closed,
      'total_voters': instance.totalVoters,
      'answers': instance.answers.map((e) => e.toJson()).toList(),
    };

_$_Answer _$$_AnswerFromJson(Map<String, dynamic> json) => _$_Answer(
      text: json['text'] as String,
      voters: json['voters'] as int,
      chosen: json['chosen'] as bool,
    );

Map<String, dynamic> _$$_AnswerToJson(_$_Answer instance) => <String, dynamic>{
      'text': instance.text,
      'voters': instance.voters,
      'chosen': instance.chosen,
    };

_$_TextEntities _$$_TextEntitiesFromJson(Map<String, dynamic> json) =>
    _$_TextEntities(
      type: json['type'] as String,
      text: json['text'] as String,
      documentId: json['document_id'] as String?,
      href: json['href'] as String?,
      userId: json['user_id'] as int?,
    );

Map<String, dynamic> _$$_TextEntitiesToJson(_$_TextEntities instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
      'document_id': instance.documentId,
      'href': instance.href,
      'user_id': instance.userId,
    };

_$_Contact _$$_ContactFromJson(Map<String, dynamic> json) => _$_Contact(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      phoneNumber: json['phone_number'] as String,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      dateUnixtime: json['date_unixtime'] as String?,
    );

Map<String, dynamic> _$$_ContactToJson(_$_Contact instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone_number': instance.phoneNumber,
      'date': instance.date?.toIso8601String(),
      'date_unixtime': instance.dateUnixtime,
    };

_$_OtherData _$$_OtherDataFromJson(Map<String, dynamic> json) => _$_OtherData(
      aboutMeta: json['about_meta'] as String,
      changesLog: json['changes_log'] as List<dynamic>,
      help: json['help'] as String,
      installedStickers: (json['installed_stickers'] as List<dynamic>)
          .map((e) => InstalledSticker.fromJson(e as Map<String, dynamic>))
          .toList(),
      ips: (json['ips'] as List<dynamic>)
          .map((e) => Ip.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OtherDataToJson(_$_OtherData instance) =>
    <String, dynamic>{
      'about_meta': instance.aboutMeta,
      'changes_log': instance.changesLog,
      'help': instance.help,
      'installed_stickers':
          instance.installedStickers.map((e) => e.toJson()).toList(),
      'ips': instance.ips.map((e) => e.toJson()).toList(),
    };

_$_PersonalInformation _$$_PersonalInformationFromJson(
  Map<String, dynamic> json,
) =>
    _$_PersonalInformation(
      userId: json['user_id'] as int,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      phoneNumber: json['phone_number'] as String,
      username: json['username'] as String,
      bio: json['bio'] as String,
    );

Map<String, dynamic> _$$_PersonalInformationToJson(
  _$_PersonalInformation instance,
) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone_number': instance.phoneNumber,
      'username': instance.username,
      'bio': instance.bio,
    };

_$_ProfilePicture _$$_ProfilePictureFromJson(Map<String, dynamic> json) =>
    _$_ProfilePicture(
      date: DateTime.parse(json['date'] as String),
      dateUnixtime: json['date_unixtime'] as String,
      photo: json['photo'] as String,
    );

Map<String, dynamic> _$$_ProfilePictureToJson(_$_ProfilePicture instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'date_unixtime': instance.dateUnixtime,
      'photo': instance.photo,
    };

_$_Session _$$_SessionFromJson(Map<String, dynamic> json) => _$_Session(
      lastActive: DateTime.parse(json['last_active'] as String),
      lastActiveUnixtime: json['last_active_unixtime'] as String,
      lastIp: json['last_ip'] as String,
      lastCountry: json['last_country'] as String,
      lastRegion: json['last_region'] as String,
      applicationName: json['application_name'] as String,
      applicationVersion: json['application_version'] as String,
      deviceModel: json['device_model'] as String,
      platform: json['platform'] as String,
      systemVersion: json['system_version'] as String,
      created: DateTime.parse(json['created'] as String),
      createdUnixtime: json['created_unixtime'] as String,
    );

Map<String, dynamic> _$$_SessionToJson(_$_Session instance) =>
    <String, dynamic>{
      'last_active': instance.lastActive.toIso8601String(),
      'last_active_unixtime': instance.lastActiveUnixtime,
      'last_ip': instance.lastIp,
      'last_country': instance.lastCountry,
      'last_region': instance.lastRegion,
      'application_name': instance.applicationName,
      'application_version': instance.applicationVersion,
      'device_model': instance.deviceModel,
      'platform': instance.platform,
      'system_version': instance.systemVersion,
      'created': instance.created.toIso8601String(),
      'created_unixtime': instance.createdUnixtime,
    };

_$_FrequentContact _$$_FrequentContactFromJson(Map<String, dynamic> json) =>
    _$_FrequentContact(
      id: json['id'] as int,
      category: json['category'] as String,
      type: json['type'] as String,
      name: json['name'] as String,
      rating: (json['rating'] as num).toDouble(),
    );

Map<String, dynamic> _$$_FrequentContactToJson(_$_FrequentContact instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'type': instance.type,
      'name': instance.name,
      'rating': instance.rating,
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

_$_Story _$$_StoryFromJson(Map<String, dynamic> json) => _$_Story(
      date: DateTime.parse(json['date'] as String),
      dateUnixtime: json['date_unixtime'] as String,
      expires: DateTime.parse(json['expires'] as String),
      expiresUnixtime: json['expires_unixtime'] as String,
      pinned: json['pinned'] as bool,
      media: json['media'] as String,
      caption: json['caption'] as String?,
    );

Map<String, dynamic> _$$_StoryToJson(_$_Story instance) => <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'date_unixtime': instance.dateUnixtime,
      'expires': instance.expires.toIso8601String(),
      'expires_unixtime': instance.expiresUnixtime,
      'pinned': instance.pinned,
      'media': instance.media,
      'caption': instance.caption,
    };
