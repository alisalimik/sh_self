import 'package:sh_self/sh_self.dart';
import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/helpers.dart';
import 'package:sh_self/utils/models/sh_filter.dart';
import 'package:sh_self/utils/models/sh_module.dart';

void offlineText() => ShModule.onNewMessage(
      _function,
      ShFilter.me() + ShFilter.regex(r'^[Oo]fftxt (.*)$'),
    );
Future<void> _function(update) async {
  if (update is! td.UpdateNewMessage) return;
    telegramApp.addLog("running offline text");
  final String text =
      (update.message.content as td.MessageText).text.text.substring(7);
  database.saveToDb("offtxt", text);
  editMessageAndAutoDelete(update.message, "$text\n__Added as offline text!__");
}
