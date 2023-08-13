import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Resends the code to verify a phone number to be added to a user's Telegram
/// Passport
/// Returns [AuthenticationCodeInfo]
@immutable
class ResendPhoneNumberVerificationCode extends TdFunction {
  const ResendPhoneNumberVerificationCode();

  static const String constructor = 'resendPhoneNumberVerificationCode';

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
