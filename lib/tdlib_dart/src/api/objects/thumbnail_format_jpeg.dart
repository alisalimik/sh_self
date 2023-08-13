import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The thumbnail is in JPEG format
@immutable
class ThumbnailFormatJpeg extends ThumbnailFormat {
  const ThumbnailFormatJpeg();

  static const String constructor = 'thumbnailFormatJpeg';

  static ThumbnailFormatJpeg? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const ThumbnailFormatJpeg();
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
