import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// A rule to allow all contacts of the user to do something
@immutable
class UserPrivacySettingRuleAllowContacts extends UserPrivacySettingRule {
  const UserPrivacySettingRuleAllowContacts();

  static const String constructor = 'userPrivacySettingRuleAllowContacts';

  static UserPrivacySettingRuleAllowContacts? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingRuleAllowContacts();
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
