import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/sh_data_export.freezed.dart';
part 'generated/sh_data_export.g.dart';

@freezed
class ShDataExport with _$ShDataExport {
  const factory ShDataExport({
    required String about,
    required PersonalInformation personalInformation,
    required List<ProfilePicture> profilePictures,
    required List<dynamic> stories,
    required ListWithAbout<Contact> contacts,
    required ListWithAbout<Contact> frequentContacts,
    required ListWithAbout<Session> sessions,
    required ListWithAbout<String> webSessions,
    required OtherData otherData,
    required ListWithAbout<Chat> chats,
    required ListWithAbout<Chat> leftChats,
  }) = _ShDataExport;

  factory ShDataExport.fromJson(Map<String, dynamic> json) =>
      _$ShDataExportFromJson(json);
}

@freezed
class Chat with _$Chat {
  const factory Chat({
    String? name,
    required String type,
    required int id,
    required List<Message> messages,
  }) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}

@freezed
class Message with _$Message {
  const factory Message({
    required int id,
    required String type,
    required DateTime date,
    required String dateUnixtime,
    String? from,
    String? fromId,
    required dynamic text,
    required List<TextEntities> textEntities,
    DateTime? edited,
    String? editedUnixtime,
    int? replyToMessageId,
    String? photo,
    int? width,
    int? height,
    String? actor,
    String? actorId,
    String? action,
    List<String>? members,
    String? file,
    String? thumbnail,
    String? mediaType,
    String? stickerEmoji,
    String? mimeType,
    int? durationSeconds,
    String? forwardedFrom,
    String? invoiceInformation,
    String? savedFrom,
    Contact? contactInformation,
    int? messageId,
    String? cost,
    int? months,
    String? title,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

@freezed
class TextEntities with _$TextEntities {
  const factory TextEntities({
    required String type,
    required String text,
    String? documentId,
    String? href,
    int? userId,
  }) = _TextEntities;

  factory TextEntities.fromJson(Map<String, dynamic> json) =>
      _$TextEntitiesFromJson(json);
}

@freezed
class Contact with _$Contact {
  const factory Contact({
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required DateTime date,
    required String dateUnixtime,
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
}

@freezed
class OtherData with _$OtherData {
  const factory OtherData({
    required String aboutMeta,
    required List<dynamic> changesLog,
    required String help,
    required List<String> installedStickers,
    required List<String> ips,
  }) = _OtherData;

  factory OtherData.fromJson(Map<String, dynamic> json) =>
      _$OtherDataFromJson(json);
}

@freezed
class PersonalInformation with _$PersonalInformation {
  const factory PersonalInformation({
    required int userId,
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String username,
    required String bio,
  }) = _PersonalInformation;

  factory PersonalInformation.fromJson(Map<String, dynamic> json) =>
      _$PersonalInformationFromJson(json);
}

@freezed
class ProfilePicture with _$ProfilePicture {
  const factory ProfilePicture({
    required DateTime date,
    required String dateUnixtime,
    required String photo,
  }) = _ProfilePicture;

  factory ProfilePicture.fromJson(Map<String, dynamic> json) =>
      _$ProfilePictureFromJson(json);
}

@freezed
@JsonSerializable(genericArgumentFactories: true)
class ListWithAbout<T> with _$ListWithAbout<T> {
  const factory ListWithAbout({
    required String about,
    required List<T> list,
  }) = _ListWithAbout;


  factory ListWithAbout.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) {
    return _$ListWithAboutFromJson<T>(json, fromJsonT);
  }
}

@freezed
class Session with _$Session {
  const factory Session({
    required DateTime lastActive,
    required String lastActiveUnixtime,
    required String lastIp,
    required String lastCountry,
    required String lastRegion,
    required String applicationName,
    required String applicationVersion,
    required String deviceModel,
    required String platform,
    required String systemVersion,
    required DateTime created,
    required String createdUnixtime,
  }) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
}
