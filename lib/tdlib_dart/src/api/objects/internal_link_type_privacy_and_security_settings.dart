import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The link is a link to the privacy and security section of the app settings
@immutable
class InternalLinkTypePrivacyAndSecuritySettings extends InternalLinkType {
  const InternalLinkTypePrivacyAndSecuritySettings();

  static const String constructor =
      'internalLinkTypePrivacyAndSecuritySettings';

  static InternalLinkTypePrivacyAndSecuritySettings? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypePrivacyAndSecuritySettings();
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
