import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Returns TGS stickers with generic animations for custom emoji reactions
/// Returns [Stickers]
@immutable
class GetCustomEmojiReactionAnimations extends TdFunction {
  const GetCustomEmojiReactionAnimations();

  static const String constructor = 'getCustomEmojiReactionAnimations';

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
