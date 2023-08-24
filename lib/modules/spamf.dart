import 'dart:math';

import 'package:sh_self/sh_self.dart';
import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/helpers.dart';
import 'package:sh_self/utils/models/sh_filter.dart';
import 'package:sh_self/utils/models/sh_module.dart';

void spamf() => ShModule.onNewMessage(
      _function,
      ShFilter.me() + ShFilter.regex(r'^[Ss]pamf (\d*)$'),
    );
Future<void> _function(update) async {
  if (update is! td.UpdateNewMessage) return;
  telegramApp.addLog("running spam fuck");
  final int spamCount = int.parse(
    (update.message.content as td.MessageText).text.text.split(" ").last,
  );
  for (int i = 1; i <= clamp(spamCount, 0, 100); i++) {
    try {
      String f = 'Fuck you!';
      if (database.fosh != null && database.fosh!.length > 0) {
        f = database.fosh!.values
            .toList()[Random.secure().nextInt(database.fosh!.length)];
      }
      await telegramApp.client.send(
        td.SendMessage(
          chatId: update.message.chatId,
          messageThreadId: update.message.messageThreadId,
          inputMessageContent: td.InputMessageText(
            text: td.FormattedText(
              text: f,
              entities: const [],
            ),
            clearDraft: false,
            disableWebPagePreview: false,
          ),
        ),
      );
    } catch (_) {}
  }
}
