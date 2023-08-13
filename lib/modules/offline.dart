import 'package:sh_self/sh_self.dart';
import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/helpers.dart';
import 'package:sh_self/utils/models/sh_filter.dart';
import 'package:sh_self/utils/models/sh_module.dart';

void offlineMode() => ShModule.onNewMessage(
      _function,
      ShFilter.me() + ShFilter.regex(r'^[Oo]ffline$'),
    );
Future<void> _function(update) async {
  if (update is! td.UpdateNewMessage) return;
  String text = "";
  if (database.readFromDb("offmode") == "on") {
    database.saveToDb("offmode", "off");
    text = "Offline mode is *OFF* now!";
  } else {
    database.saveToDb("offmode", "on");
    text = "Offline mode is *ON* now!";
  }
  editMessageAndAutoDelete(update.message, text);
}
