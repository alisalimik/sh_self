import 'package:sh_self/sh_self.dart';
import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/helpers.dart';
import 'package:sh_self/utils/models/sh_filter.dart';
import 'package:sh_self/utils/models/sh_module.dart';

void listf() => ShModule.onNewMessage(
      _function,
      ShFilter.me() + ShFilter.regex(r'^[Ll]istf$'),
    );
Future<void> _function(update) async {
  if (update is! td.UpdateNewMessage) return;
  String text = "You dont have any saved Fosh!";
  if (database.fosh != null && database.fosh!.values.isNotEmpty) {
    text = "Your saved fosh list:\n";
    for (int i = 0; i < database.fosh!.values.length; i++) {
      // ignore: use_string_buffers
      text += "$i - __${database.fosh!.getAt(i)}__\n";
    }
  }
  editMessageAndAutoDelete(update.message, text);
}
