import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Returns available emojis categories
/// Returns [EmojiCategories]
@immutable
class GetEmojiCategories extends TdFunction {
  const GetEmojiCategories({
    this.type,
  });

  /// [type] Type of emoji categories to return; pass null to get default emoji
  /// categories
  final EmojiCategoryType? type;

  static const String constructor = 'getEmojiCategories';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
