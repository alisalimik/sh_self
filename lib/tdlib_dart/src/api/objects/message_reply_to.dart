import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Contains information about the message or the story a message is replying
/// to
@immutable
abstract class MessageReplyTo extends TdObject {
  const MessageReplyTo();

  static const String constructor = 'messageReplyTo';

  /// Inherited by:
  /// [MessageReplyToMessage]
  /// [MessageReplyToStory]
  static MessageReplyTo? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageReplyToMessage.constructor:
        return MessageReplyToMessage.fromJson(json);
      case MessageReplyToStory.constructor:
        return MessageReplyToStory.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
