import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The category must be used for chat photo emoji selection
@immutable
class EmojiCategoryTypeChatPhoto extends EmojiCategoryType {
  const EmojiCategoryTypeChatPhoto();

  static const String constructor = 'emojiCategoryTypeChatPhoto';

  static EmojiCategoryTypeChatPhoto? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const EmojiCategoryTypeChatPhoto();
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
