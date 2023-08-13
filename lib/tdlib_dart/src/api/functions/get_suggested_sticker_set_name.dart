import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Returns a suggested name for a new sticker set with a given title
/// Returns [Text]
@immutable
class GetSuggestedStickerSetName extends TdFunction {
  const GetSuggestedStickerSetName({
    required this.title,
  });

  /// [title] Sticker set title; 1-64 characters
  final String title;

  static const String constructor = 'getSuggestedStickerSetName';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
