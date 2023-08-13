import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// An authentication token received through Google ID
@immutable
class EmailAddressAuthenticationGoogleId extends EmailAddressAuthentication {
  const EmailAddressAuthenticationGoogleId({
    required this.token,
  });

  /// [token] The token
  final String token;

  static const String constructor = 'emailAddressAuthenticationGoogleId';

  static EmailAddressAuthenticationGoogleId? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return EmailAddressAuthenticationGoogleId(
      token: json['token'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'token': token,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
