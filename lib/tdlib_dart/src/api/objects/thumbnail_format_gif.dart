import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The thumbnail is in static GIF format. It will be used only for some bot
/// inline results
@immutable
class ThumbnailFormatGif extends ThumbnailFormat {
  const ThumbnailFormatGif();

  static const String constructor = 'thumbnailFormatGif';

  static ThumbnailFormatGif? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const ThumbnailFormatGif();
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
