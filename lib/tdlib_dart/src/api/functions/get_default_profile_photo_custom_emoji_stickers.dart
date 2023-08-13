import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Returns default list of custom emoji stickers for placing on a profile
/// photo
/// Returns [Stickers]
@immutable
class GetDefaultProfilePhotoCustomEmojiStickers extends TdFunction {
  const GetDefaultProfilePhotoCustomEmojiStickers();

  static const String constructor = 'getDefaultProfilePhotoCustomEmojiStickers';

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
