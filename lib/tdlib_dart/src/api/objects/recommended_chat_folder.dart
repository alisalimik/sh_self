import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Describes a recommended chat folder
@immutable
class RecommendedChatFolder extends TdObject {
  const RecommendedChatFolder({
    required this.folder,
    required this.description,
  });

  /// [folder] The chat folder
  final ChatFolder folder;

  /// param_[description] Chat folder description
  final String description;

  static const String constructor = 'recommendedChatFolder';

  static RecommendedChatFolder? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return RecommendedChatFolder(
      folder: ChatFolder.fromJson(
        json['folder'] as Map<String, dynamic>?,
      )!,
      description: json['description'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'folder': folder.toJson(),
        'description': description,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
