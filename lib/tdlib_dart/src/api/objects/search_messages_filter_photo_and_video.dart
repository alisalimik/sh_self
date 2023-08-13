import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Returns only photo and video messages
@immutable
class SearchMessagesFilterPhotoAndVideo extends SearchMessagesFilter {
  const SearchMessagesFilterPhotoAndVideo();

  static const String constructor = 'searchMessagesFilterPhotoAndVideo';

  static SearchMessagesFilterPhotoAndVideo? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterPhotoAndVideo();
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
