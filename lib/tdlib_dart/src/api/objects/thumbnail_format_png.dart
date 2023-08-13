import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The thumbnail is in PNG format. It will be used only for background
/// patterns
@immutable
class ThumbnailFormatPng extends ThumbnailFormat {
  const ThumbnailFormatPng();

  static const String constructor = 'thumbnailFormatPng';

  static ThumbnailFormatPng? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const ThumbnailFormatPng();
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
