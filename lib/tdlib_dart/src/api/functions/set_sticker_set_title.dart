import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Sets a sticker set title; for bots only
/// Returns [Ok]
@immutable
class SetStickerSetTitle extends TdFunction {
  const SetStickerSetTitle({
    required this.name,
    required this.title,
  });

  /// [name] Sticker set name
  final String name;

  /// [title] New sticker set title
  final String title;

  static const String constructor = 'setStickerSetTitle';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'title': title,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
