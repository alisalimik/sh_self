import 'package:sh_self/modules/authorize.dart';
import 'package:sh_self/modules/auto_delete.dart';
import 'package:sh_self/modules/connection.dart';
import 'package:sh_self/modules/date.dart';
import 'package:sh_self/modules/mute.dart';
import 'package:sh_self/modules/mute_handler.dart';
import 'package:sh_self/modules/mute_list.dart';
import 'package:sh_self/modules/offline.dart';
import 'package:sh_self/modules/offline_handler.dart';
import 'package:sh_self/modules/reload.dart';
import 'package:sh_self/utils/sh_database.dart';
import 'package:sh_self/utils/sh_telegram_app.dart';

String version = "1.0.0";
late ShDatabase database;
late ShTelegramApp telegramApp;

void runApp() {
  database = ShDatabase();
  telegramApp = ShTelegramApp(
    modules: [
      connection,
      autorize,
      autoDelete,
      reload,
      mute,
      mutedList,
      date,
      muteHandler,
      offlineMode,
      offlineHandler,
    ],
  );
}
