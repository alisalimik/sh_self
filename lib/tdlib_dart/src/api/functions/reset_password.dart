import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Removes 2-step verification password without previous password and access
/// to recovery email address. The password can't be reset immediately and the
/// request needs to be repeated after the specified time
/// Returns [ResetPasswordResult]
@immutable
class ResetPassword extends TdFunction {
  const ResetPassword();

  static const String constructor = 'resetPassword';

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
