import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// A privacy setting for managing whether peer-to-peer connections can be
/// used for calls
@immutable
class UserPrivacySettingAllowPeerToPeerCalls extends UserPrivacySetting {
  const UserPrivacySettingAllowPeerToPeerCalls();

  static const String constructor = 'userPrivacySettingAllowPeerToPeerCalls';

  static UserPrivacySettingAllowPeerToPeerCalls? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingAllowPeerToPeerCalls();
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
