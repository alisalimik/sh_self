import 'package:sh_self/sh_self.dart';
import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/helpers.dart';
import 'package:sh_self/utils/models/sh_filter.dart';
import 'package:sh_self/utils/models/sh_module.dart';

void delf() => ShModule.onNewMessage(
      _function,
      ShFilter.me() + ShFilter.regex(r'^[Dd]elf (\d*)$'),
    );
Future<void> _function(update) async {
  if (update is! td.UpdateNewMessage) return;
    telegramApp.addLog("running delf");

  final int fId = int.tryParse(
        (update.message.content as td.MessageText).text.text.split(" ").last,
      ) ??
      0;
  final String f = database.fosh?.getAt(fId) ?? 'Not Found';
  database.deleteFosh(fId);
  editMessageAndAutoDelete(update.message, "Fosh deleted:\n$fId\n$f");
}
