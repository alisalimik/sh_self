import 'package:sh_self/sh_self.dart';
import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/helpers.dart';
import 'package:sh_self/utils/models/sh_filter.dart';
import 'package:sh_self/utils/models/sh_module.dart';

void autoDelete() => ShModule.onNewMessage(
      _function,
      ShFilter.me() + ShFilter.regex(r'^[Aa]utodel? ?(\d*)$'),
    );
Future<void> _function(update) async {
  if (update is! td.UpdateNewMessage) return;
  telegramApp.addLog("running autoDelete");
  final td.MessageText incomingMessage =
      update.message.content as td.MessageText;
  String text = "";
  if (incomingMessage.text.text.contains(" ")) {
    final String timer = incomingMessage.text.text.split(" ")[1];
    database.saveToDb("autodeltime", timer);
    text = "AutoDelTime Seted to `$timer` Secend";
  } else {
    if (database.readFromDb("autodel") == "on") {
      database.saveToDb("autodel", "off");
      text = "Auto Delete Is **OFF** Now";
    } else {
      database.saveToDb("autodel", "on");
      text = "Auto Delete Is **ON** Now";
    }
  }
  editMessageAndAutoDelete(update.message, text);
}
