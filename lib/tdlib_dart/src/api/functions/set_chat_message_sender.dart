import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Selects a message sender to send messages in a chat
/// Returns [Ok]
@immutable
class SetChatMessageSender extends TdFunction {
  const SetChatMessageSender({
    required this.chatId,
    required this.messageSenderId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageSenderId] New message sender for the chat
  final MessageSender messageSenderId;

  static const String constructor = 'setChatMessageSender';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_sender_id': messageSenderId.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
