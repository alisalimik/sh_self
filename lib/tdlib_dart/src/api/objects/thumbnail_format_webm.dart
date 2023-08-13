import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The thumbnail is in WEBM format. It will be used only for WEBM sticker
/// sets
@immutable
class ThumbnailFormatWebm extends ThumbnailFormat {
  const ThumbnailFormatWebm();

  static const String constructor = 'thumbnailFormatWebm';

  static ThumbnailFormatWebm? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const ThumbnailFormatWebm();
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
