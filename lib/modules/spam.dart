import 'package:sh_self/sh_self.dart';
import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/helpers.dart';
import 'package:sh_self/utils/models/sh_filter.dart';
import 'package:sh_self/utils/models/sh_module.dart';

const int megaByte = 1024 * 1024;

void spam() => ShModule.onNewMessage(
      _function,
      ShFilter.me() + ShFilter.reply() + ShFilter.regex(r'^[Ss]pam (\d*)$'),
    );
Future<void> _function(update) async {
  if (update is! td.UpdateNewMessage) return;
  final int spamCount = int.parse(
    (update.message.content as td.MessageText).text.text.split(" ").last,
  );
  final replyTo = update.message.replyTo! as td.MessageReplyToMessage;
  for (int i = 1; i <= clamp(spamCount, 0, 100); i++) {
    try {
      await telegramApp.client.send(
        td.ForwardMessages(
          chatId: update.message.chatId,
          messageThreadId: update.message.messageThreadId,
          fromChatId: replyTo.chatId,
          messageIds: [replyTo.messageId],
          sendCopy: false,
          removeCaption: false,
          onlyPreview: false,
        ),
      );
    } catch (_) {}
  }
}
