import 'package:sh_self/sh_self.dart';
import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/helpers.dart';
import 'package:sh_self/utils/models/sh_filter.dart';
import 'package:sh_self/utils/models/sh_module.dart';

void addf() => ShModule.onNewMessage(
      _function,
      ShFilter.me() + ShFilter.regex('^[Aa]ddf (.*)'),
    );
Future<void> _function(update) async {
  if (update is! td.UpdateNewMessage) return;
  final String newF = (update.message.content as td.MessageText)
      .text
      .text
      .split(" ")
      .skip(1)
      .join(" ");
  database.addFosh(newF);
  editMessageAndAutoDelete(update.message, "Fosh added:\n$newF");
}
