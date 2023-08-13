import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// A sticker set has changed
@immutable
class UpdateStickerSet extends Update {
  const UpdateStickerSet({
    required this.stickerSet,
  });

  /// [stickerSet] The sticker set
  final StickerSet stickerSet;

  static const String constructor = 'updateStickerSet';

  static UpdateStickerSet? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return UpdateStickerSet(
      stickerSet: StickerSet.fromJson(
        json['sticker_set'] as Map<String, dynamic>?,
      )!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker_set': stickerSet.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
