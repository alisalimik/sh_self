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
        required Contacts contacts,
        required FrequentContacts frequentContacts,
        required Sessions sessions,
        required Chats webSessions,
        required OtherData otherData,
        required Chats chats,
        required LeftChats leftChats,
    }) = _ShDataExport;

    factory ShDataExport.fromJson(Map<String, dynamic> json) => _$ShDataExportFromJson(json);
}

@freezed
class Chats with _$Chats {
    const factory Chats({
        required String about,
        required List<ChatsList> list,
    }) = _Chats;

    factory Chats.fromJson(Map<String, dynamic> json) => _$ChatsFromJson(json);
}

@freezed
class ChatsList with _$ChatsList {
    const factory ChatsList({
        String? name,
        required String type,
        required int id,
        required List<PurpleMessage> messages,
    }) = _ChatsList;

    factory ChatsList.fromJson(Map<String, dynamic> json) => _$ChatsListFromJson(json);
}

@freezed
class PurpleMessage with _$PurpleMessage {
    const factory PurpleMessage({
        required int id,
        required String type,
        required DateTime date,
        required String dateUnixtime,
        String? from,
        String? fromId,
        required dynamic text,
        required List<PurpleText> textEntities,
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
        ContactInformation? contactInformation,
        int? messageId,
        String? cost,
        int? months,
        String? title,
    }) = _PurpleMessage;

    factory PurpleMessage.fromJson(Map<String, dynamic> json) => _$PurpleMessageFromJson(json);
}

@freezed
class ContactInformation with _$ContactInformation {
    const factory ContactInformation({
        required String firstName,
        required String lastName,
        required String phoneNumber,
    }) = _ContactInformation;

    factory ContactInformation.fromJson(Map<String, dynamic> json) => _$ContactInformationFromJson(json);
}

@freezed
class PurpleText with _$PurpleText {
    const factory PurpleText({
        required String type,
        required String text,
        String? documentId,
        String? href,
        int? userId,
    }) = _PurpleText;

    factory PurpleText.fromJson(Map<String, dynamic> json) => _$PurpleTextFromJson(json);
}

@freezed
class Contacts with _$Contacts {
    const factory Contacts({
        required String about,
        required List<ContactsList> list,
    }) = _Contacts;

    factory Contacts.fromJson(Map<String, dynamic> json) => _$ContactsFromJson(json);
}

@freezed
class ContactsList with _$ContactsList {
    const factory ContactsList({
        required String firstName,
        required String lastName,
        required String phoneNumber,
        required DateTime date,
        required String dateUnixtime,
    }) = _ContactsList;

    factory ContactsList.fromJson(Map<String, dynamic> json) => _$ContactsListFromJson(json);
}

@freezed
class FrequentContacts with _$FrequentContacts {
    const factory FrequentContacts({
        required String about,
        required List<FrequentContactsList> list,
    }) = _FrequentContacts;

    factory FrequentContacts.fromJson(Map<String, dynamic> json) => _$FrequentContactsFromJson(json);
}

@freezed
class FrequentContactsList with _$FrequentContactsList {
    const factory FrequentContactsList({
        required int id,
        required String category,
        required String type,
        required String name,
        required double rating,
    }) = _FrequentContactsList;

    factory FrequentContactsList.fromJson(Map<String, dynamic> json) => _$FrequentContactsListFromJson(json);
}

@freezed
class LeftChats with _$LeftChats {
    const factory LeftChats({
        required String about,
        required List<LeftChatsList> list,
    }) = _LeftChats;

    factory LeftChats.fromJson(Map<String, dynamic> json) => _$LeftChatsFromJson(json);
}

@freezed
class LeftChatsList with _$LeftChatsList {
    const factory LeftChatsList({
        required String name,
        required String type,
        required int id,
        required List<FluffyMessage> messages,
    }) = _LeftChatsList;

    factory LeftChatsList.fromJson(Map<String, dynamic> json) => _$LeftChatsListFromJson(json);
}

@freezed
class FluffyMessage with _$FluffyMessage {
    const factory FluffyMessage({
        required int id,
        required String type,
        required DateTime date,
        required String dateUnixtime,
        required String from,
        required String fromId,
        required dynamic text,
        required List<FluffyText> textEntities,
        int? replyToMessageId,
        DateTime? edited,
        String? editedUnixtime,
        String? photo,
        int? width,
        int? height,
        String? file,
        String? thumbnail,
        String? mediaType,
        String? mimeType,
        int? durationSeconds,
    }) = _FluffyMessage;

    factory FluffyMessage.fromJson(Map<String, dynamic> json) => _$FluffyMessageFromJson(json);
}

@freezed
class FluffyText with _$FluffyText {
    const factory FluffyText({
        required String type,
        required String text,
        String? documentId,
    }) = _FluffyText;

    factory FluffyText.fromJson(Map<String, dynamic> json) => _$FluffyTextFromJson(json);
}

@freezed
class OtherData with _$OtherData {
    const factory OtherData({
        required String aboutMeta,
        required List<dynamic> changesLog,
        required String help,
        required List<InstalledSticker> installedStickers,
        required List<Ip> ips,
    }) = _OtherData;

    factory OtherData.fromJson(Map<String, dynamic> json) => _$OtherDataFromJson(json);
}

@freezed
class InstalledSticker with _$InstalledSticker {
    const factory InstalledSticker({
        required String url,
    }) = _InstalledSticker;

    factory InstalledSticker.fromJson(Map<String, dynamic> json) => _$InstalledStickerFromJson(json);
}

@freezed
class Ip with _$Ip {
    const factory Ip({
        required String ip,
    }) = _Ip;

    factory Ip.fromJson(Map<String, dynamic> json) => _$IpFromJson(json);
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

    factory PersonalInformation.fromJson(Map<String, dynamic> json) => _$PersonalInformationFromJson(json);
}

@freezed
class ProfilePicture with _$ProfilePicture {
    const factory ProfilePicture({
        required DateTime date,
        required String dateUnixtime,
        required String photo,
    }) = _ProfilePicture;

    factory ProfilePicture.fromJson(Map<String, dynamic> json) => _$ProfilePictureFromJson(json);
}

@freezed
class Sessions with _$Sessions {
    const factory Sessions({
        required String about,
        required List<SessionsList> list,
    }) = _Sessions;

    factory Sessions.fromJson(Map<String, dynamic> json) => _$SessionsFromJson(json);
}

@freezed
class SessionsList with _$SessionsList {
    const factory SessionsList({
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
    }) = _SessionsList;

    factory SessionsList.fromJson(Map<String, dynamic> json) => _$SessionsListFromJson(json);
}
