import 'package:sh_self/sh_self.dart';
import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/helpers.dart';
import 'package:sh_self/utils/models/sh_filter.dart';
import 'package:sh_self/utils/models/sh_module.dart';

void evalModuleList() => ShModule.onNewMessage(
      _function,
      ShFilter.me() + ShFilter.regex(r'^[Mm]odule [Ll]ist$'),
    );
Future<void> _function(update) async {
  if (update is! td.UpdateNewMessage) return;
  telegramApp.addLog("running eval module list");
  final modules = database.getModules();
  if (modules == null) return;

  final StringBuffer text = StringBuffer();
  for (final Map<String, String> m in modules) {
    text.write("regex: ${m['regex']}\npath: ${m['path']}\n............\n");
  }

  editMessageAndAutoDelete(update.message, text.toString());
}
