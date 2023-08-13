import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Initialization parameters are needed. Call setTdlibParameters to provide
/// them
@immutable
class AuthorizationStateWaitTdlibParameters extends AuthorizationState {
  const AuthorizationStateWaitTdlibParameters();

  static const String constructor = 'authorizationStateWaitTdlibParameters';

  static AuthorizationStateWaitTdlibParameters? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const AuthorizationStateWaitTdlibParameters();
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
