import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Contains a list of chat or user profile photos
@immutable
class ChatPhotos extends TdObject {
  const ChatPhotos({
    required this.totalCount,
    required this.photos,
  });

  /// [totalCount] Total number of photos
  final int totalCount;

  /// [photos] List of photos
  final List<ChatPhoto> photos;

  static const String constructor = 'chatPhotos';

  static ChatPhotos? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatPhotos(
      totalCount: json['total_count'] as int,
      photos: List<ChatPhoto>.from(
        ((json['photos'] as List<dynamic>?) ?? <dynamic>[])
            .map(
              (item) => ChatPhoto.fromJson(
                item as Map<String, dynamic>?,
              ),
            )
            .toList(),
      ),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'photos': photos.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
