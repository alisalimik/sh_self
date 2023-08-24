import 'package:sh_self/sh_self.dart';
import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/helpers.dart';
import 'package:sh_self/utils/models/sh_filter.dart';
import 'package:sh_self/utils/models/sh_module.dart';

void offlineHandler() => ShModule.onNewMessage(
      _function,
      ShFilter.private() + ShFilter.allMessageTypes(),
      1,
    );
Future<void> _function(update) async {
  if (update is! td.UpdateNewMessage) return;
  final td.TdObject me = await telegramApp.client.send(const td.GetMe());

  if (me is td.User && me.status is td.UserStatusOffline) {
    if (database.readFromDb("offmode") == "on") {
      final String offText = database.readFromDb(
        "offtxt",
        defaultValue: "User is offline please send message later!",
      );
  telegramApp.addLog("running offline handler");
      await telegramApp.client.send(
        td.SendMessage(
          chatId: update.message.chatId,
          messageThreadId: update.message.messageThreadId,
          inputMessageContent: td.InputMessageText(
            text: formatMarkDown(offText),
            disableWebPagePreview: true,
            clearDraft: true,
          ),
        ),
      );
    }
  }
}
