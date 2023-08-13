import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// A category containing frequently used chats with inline bots sorted by
/// their usage in inline mode
@immutable
class TopChatCategoryInlineBots extends TopChatCategory {
  const TopChatCategoryInlineBots();

  static const String constructor = 'topChatCategoryInlineBots';

  static TopChatCategoryInlineBots? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const TopChatCategoryInlineBots();
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
