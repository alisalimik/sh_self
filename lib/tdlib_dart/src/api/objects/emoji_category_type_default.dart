import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The category must be used by default
@immutable
class EmojiCategoryTypeDefault extends EmojiCategoryType {
  const EmojiCategoryTypeDefault();

  static const String constructor = 'emojiCategoryTypeDefault';

  static EmojiCategoryTypeDefault? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const EmojiCategoryTypeDefault();
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
