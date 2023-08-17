// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/sh_data_export.freezed.dart';
part 'generated/sh_data_export.g.dart';

@freezed
class ShDataExport with _$ShDataExport {
  const factory ShDataExport({
    @JsonKey(name: "about") required String about,
    @JsonKey(name: "personal_information")
    required PersonalInformation personalInformation,
    @JsonKey(name: "profile_pictures")
    required List<ProfilePicture> profilePictures,
    @JsonKey(name: "stories") required List<dynamic> stories,
    @JsonKey(name: "contacts") required ListWithAbout<Contact> contacts,
    @JsonKey(name: "frequent_contacts")
    required ListWithAbout<FrequentContact> frequentContacts,
    @JsonKey(name: "sessions") required ListWithAbout<Session> sessions,
    @JsonKey(name: "web_sessions")
    required ListWithAbout<Map<String, dynamic>> webSessions,
    @JsonKey(name: "other_data") required OtherData otherData,
    @JsonKey(name: "chats") required ListWithAbout<Chat> chats,
    @JsonKey(name: "left_chats") required ListWithAbout<Chat> leftChats,
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
    @JsonKey(name: "date_unixtime") required String dateUnixtime,
    String? from,
    @JsonKey(name: "from_id") String? fromId,
    required dynamic text,
    @JsonKey(name: "text_entities") required List<TextEntities> textEntities,
    DateTime? edited,
    @JsonKey(name: "edited_unixtime") String? editedUnixtime,
    @JsonKey(name: "reply_to_message_id") int? replyToMessageId,
    String? photo,
    int? width,
    int? height,
    String? actor,
    @JsonKey(name: "actor_id") String? actorId,
    String? action,
    List<String>? members,
    String? file,
    String? thumbnail,
    @JsonKey(name: "media_type") String? mediaType,
    @JsonKey(name: "sticker_emoji") String? stickerEmoji,
    @JsonKey(name: "mime_type") String? mimeType,
    @JsonKey(name: "duration_seconds") int? durationSeconds,
    @JsonKey(name: "forwarded_from") String? forwardedFrom,
    @JsonKey(name: "invoice_information") String? invoiceInformation,
    @JsonKey(name: "saved_from") String? savedFrom,
    @JsonKey(name: "contact_information") Contact? contactInformation,
    @JsonKey(name: "message_id") int? messageId,
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
    @JsonKey(name: "document_id") String? documentId,
    String? href,
    @JsonKey(name: "user_id") int? userId,
  }) = _TextEntities;

  factory TextEntities.fromJson(Map<String, dynamic> json) =>
      _$TextEntitiesFromJson(json);
}

@freezed
class Contact with _$Contact {
  const factory Contact({
    @JsonKey(name: "first_name") required String firstName,
    @JsonKey(name: "last_name") required String lastName,
    @JsonKey(name: "phone_number") required String phoneNumber,
    DateTime? date,
    @JsonKey(name: "date_unixtime") String? dateUnixtime,
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
}

@freezed
class OtherData with _$OtherData {
  const factory OtherData({
    @JsonKey(name: "about_meta") required String aboutMeta,
    @JsonKey(name: "changes_log") required List<dynamic> changesLog,
    @JsonKey(name: "help") required String help,
    @JsonKey(name: "installed_stickers")
    required List<InstalledSticker> installedStickers,
    @JsonKey(name: "ips") required List<Ip> ips,
  }) = _OtherData;

  factory OtherData.fromJson(Map<String, dynamic> json) =>
      _$OtherDataFromJson(json);
}

@freezed
class PersonalInformation with _$PersonalInformation {
  const factory PersonalInformation({
    @JsonKey(name: "user_id") required int userId,
    @JsonKey(name: "first_name") required String firstName,
    @JsonKey(name: "last_name") required String lastName,
    @JsonKey(name: "phone_number") required String phoneNumber,
    @JsonKey(name: "username") required String username,
    @JsonKey(name: "bio") required String bio,
  }) = _PersonalInformation;

  factory PersonalInformation.fromJson(Map<String, dynamic> json) =>
      _$PersonalInformationFromJson(json);
}

@freezed
class ProfilePicture with _$ProfilePicture {
  const factory ProfilePicture({
    required DateTime date,
    @JsonKey(name: "date_unixtime") required String dateUnixtime,
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
  
  Map<String, dynamic> toJson(Object Function(T value) toJsonT) => _$ListWithAboutToJson<T>(this, toJsonT);
  
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
    @JsonKey(name: "last_active") required DateTime lastActive,
    @JsonKey(name: "last_active_unixtime") required String lastActiveUnixtime,
    @JsonKey(name: "last_ip") required String lastIp,
    @JsonKey(name: "last_country") required String lastCountry,
    @JsonKey(name: "last_region") required String lastRegion,
    @JsonKey(name: "application_name") required String applicationName,
    @JsonKey(name: "application_version") required String applicationVersion,
    @JsonKey(name: "device_model") required String deviceModel,
    @JsonKey(name: "platform") required String platform,
    @JsonKey(name: "system_version") required String systemVersion,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "created_unixtime") required String createdUnixtime,
  }) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
}

@freezed
class FrequentContact with _$FrequentContact {
  const factory FrequentContact({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "category") required String category,
    @JsonKey(name: "type") required String type,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "rating") required double rating,
  }) = _FrequentContact;

  factory FrequentContact.fromJson(Map<String, dynamic> json) =>
      _$FrequentContactFromJson(json);
}

@freezed
class InstalledSticker with _$InstalledSticker {
  const factory InstalledSticker({
    @JsonKey(name: "url") required String url,
  }) = _InstalledSticker;

  factory InstalledSticker.fromJson(Map<String, dynamic> json) =>
      _$InstalledStickerFromJson(json);
}

@freezed
class Ip with _$Ip {
  const factory Ip({
    @JsonKey(name: "ip") required String ip,
  }) = _Ip;

  factory Ip.fromJson(Map<String, dynamic> json) => _$IpFromJson(json);
}
