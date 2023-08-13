import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// A privacy setting for managing whether the user can be invited to chats
@immutable
class UserPrivacySettingAllowChatInvites extends UserPrivacySetting {
  const UserPrivacySettingAllowChatInvites();

  static const String constructor = 'userPrivacySettingAllowChatInvites';

  static UserPrivacySettingAllowChatInvites? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingAllowChatInvites();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
