import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The messages was exported from a group chat
@immutable
class MessageFileTypeGroup extends MessageFileType {
  const MessageFileTypeGroup({
    required this.title,
  });

  /// [title] Title of the group chat; may be empty if unrecognized
  final String title;

  static const String constructor = 'messageFileTypeGroup';

  static MessageFileTypeGroup? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return MessageFileTypeGroup(
      title: json['title'] as String,
    );
  }

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
