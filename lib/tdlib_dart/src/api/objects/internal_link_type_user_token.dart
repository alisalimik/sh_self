import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The link is a link to a user by a temporary token. Call searchUserByToken
/// with the given token to process the link
@immutable
class InternalLinkTypeUserToken extends InternalLinkType {
  const InternalLinkTypeUserToken({
    required this.token,
  });

  /// [token] The token
  final String token;

  static const String constructor = 'internalLinkTypeUserToken';

  static InternalLinkTypeUserToken? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeUserToken(
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
