import 'package:dart_eval/dart_eval.dart';
import 'package:sh_self/sh_self.dart';
import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/helpers.dart';
import 'package:sh_self/utils/models/sh_filter.dart';
import 'package:sh_self/utils/models/sh_module.dart';
import 'package:sh_self/utils/sh_eval_plugin.dart';

void evalInterpreter() => ShModule.onNewMessage(
      _function,
      ShFilter.me() + ShFilter.reply() + ShFilter.regex(r'^[Rr]un [Ee]val$'),
    );
Future<void> _function(update) async {
  if (update is! td.UpdateNewMessage) return;
      telegramApp.addLog("running eval interpreter");
  if (update.message.replyTo is! td.MessageReplyToMessage) return;
  final td.MessageReplyToMessage? replyTo =
      update.message.replyTo as td.MessageReplyToMessage?;
  final td.Message repliedMessage = await telegramApp.client.send(
    td.GetMessage(
      chatId: update.message.chatId,
      messageId: replyTo?.messageId ?? 0,
    ),
  );
  if (repliedMessage.content is td.MessageText) {
    try {
      final output = eval(
        (repliedMessage.content as td.MessageText).text.text,
        plugins: [ShSelfEvalPlugin()],
      );
      editMessageAndAutoDelete(update.message, "*output*:\n$output");
    } catch (e) {
      editMessageAndAutoDelete(update.message, "Run eval *failed*\n$e");
    }
  }
}
