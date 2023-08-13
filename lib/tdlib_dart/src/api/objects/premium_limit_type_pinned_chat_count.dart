import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The maximum number of pinned chats in the main chat list
@immutable
class PremiumLimitTypePinnedChatCount extends PremiumLimitType {
  const PremiumLimitTypePinnedChatCount();

  static const String constructor = 'premiumLimitTypePinnedChatCount';

  static PremiumLimitTypePinnedChatCount? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypePinnedChatCount();
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
