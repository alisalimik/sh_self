import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The link contains an authentication code. Call checkAuthenticationCode
/// with the code if the current authorization state is
/// authorizationStateWaitCode
@immutable
class InternalLinkTypeAuthenticationCode extends InternalLinkType {
  const InternalLinkTypeAuthenticationCode({
    required this.code,
  });

  /// [code] The authentication code
  final String code;

  static const String constructor = 'internalLinkTypeAuthenticationCode';

  static InternalLinkTypeAuthenticationCode? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeAuthenticationCode(
      code: json['code'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'code': code,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
