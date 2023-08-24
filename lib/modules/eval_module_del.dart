import 'dart:io';

import 'package:sh_self/sh_self.dart';
import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/helpers.dart';
import 'package:sh_self/utils/models/sh_filter.dart';
import 'package:sh_self/utils/models/sh_module.dart';

void evalModuleDelete() => ShModule.onNewMessage(
      _function,
      ShFilter.me() + ShFilter.regex(r'^[Mm]odule [Dd]elete (\d*)$'),
    );
Future<void> _function(update) async {
  if (update is! td.UpdateNewMessage) return;
        telegramApp.addLog("running eval module delete");

  final int? moduleId =
      int.tryParse(getMessageTextFromJsonEval(update.toJson()).split(" ").last);
  final Map<String, String> m = database.getModule(moduleId.toString());
  database.removeModule(moduleId.toString());
  await File(m['path']!).delete();
  editMessageAndAutoDelete(update.message, 'Module $moduleId deleted!');
}
