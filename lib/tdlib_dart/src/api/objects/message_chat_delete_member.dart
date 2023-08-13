import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// A chat member was deleted
@immutable
class MessageChatDeleteMember extends MessageContent {
  const MessageChatDeleteMember({
    required this.userId,
  });

  /// [userId] User identifier of the deleted chat member
  final int userId;

  static const String constructor = 'messageChatDeleteMember';

  static MessageChatDeleteMember? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return MessageChatDeleteMember(
      userId: json['user_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
