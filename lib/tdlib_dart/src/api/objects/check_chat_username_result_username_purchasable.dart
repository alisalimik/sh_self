import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The username can be purchased at fragment.com
@immutable
class CheckChatUsernameResultUsernamePurchasable
    extends CheckChatUsernameResult {
  const CheckChatUsernameResultUsernamePurchasable();

  static const String constructor =
      'checkChatUsernameResultUsernamePurchasable';

  static CheckChatUsernameResultUsernamePurchasable? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const CheckChatUsernameResultUsernamePurchasable();
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
