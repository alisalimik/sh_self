import 'dart:io';
import 'dart:math';
import 'package:dart_eval/dart_eval.dart';
import 'package:sh_self/sh_self.dart';
import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/helpers.dart';
import 'package:sh_self/utils/models/sh_filter.dart';
import 'package:sh_self/utils/models/sh_module.dart';
import 'package:sh_self/utils/sh_eval_plugin.dart';

void evalCompiler() => ShModule.onNewMessage(
      _function,
      ShFilter.me() +
          ShFilter.reply() +
          ShFilter.regex(r'^[Mm]odule [Cc]ompile? ?(.*)$'),
    );
Future<void> _function(update) async {
  if (update is! td.UpdateNewMessage) return;
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
    final String randomName = (Random.secure().nextInt(10000) + 100).toString();
    final compiler = Compiler();
    compiler.addPlugin(ShSelfEvalPlugin());
    try {
      final program = compiler.compile({
        'sh_self': {
          'main.dart': (repliedMessage.content as td.MessageText).text.text
        }
      });
      final file =
          await File('eval_modules/m-$randomName.evc').create(recursive: true);

      await file.writeAsBytes(program.write());
      final c = (update.message.content as td.MessageText).text.text.split(" ");
      database.addModule(randomName, {
        'path': file.path,
        'regex': c.length > 2 ? c[2] : '',
      });
      editMessageAndAutoDelete(
        update.message,
        "Module Compiled! id:$randomName",
      );
    } on Exception catch (e1, e2) {
      editMessageAndAutoDelete(
        update.message,
        '*Error:*\n$e1\n$e2',
      );
    }
  }
}
