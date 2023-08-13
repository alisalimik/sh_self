import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Deleted a sticker set; for bots only
/// Returns [Ok]
@immutable
class DeleteStickerSet extends TdFunction {
  const DeleteStickerSet({
    required this.name,
  });

  /// [name] Sticker set name
  final String name;

  static const String constructor = 'deleteStickerSet';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
