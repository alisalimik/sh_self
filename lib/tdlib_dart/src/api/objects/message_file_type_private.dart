import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The messages was exported from a private chat
@immutable
class MessageFileTypePrivate extends MessageFileType {
  const MessageFileTypePrivate({
    required this.name,
  });

  /// [name] Name of the other party; may be empty if unrecognized
  final String name;

  static const String constructor = 'messageFileTypePrivate';

  static MessageFileTypePrivate? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return MessageFileTypePrivate(
      name: json['name'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
