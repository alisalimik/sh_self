import 'package:sh_self/modules/addf.dart';
import 'package:sh_self/modules/authorize.dart';
import 'package:sh_self/modules/auto_delete.dart';
import 'package:sh_self/modules/connection.dart';
import 'package:sh_self/modules/date.dart';
import 'package:sh_self/modules/delf.dart';
import 'package:sh_self/modules/eval_compiler.dart';
import 'package:sh_self/modules/eval_interpreter.dart';
import 'package:sh_self/modules/eval_module_del.dart';
import 'package:sh_self/modules/eval_module_list.dart';
import 'package:sh_self/modules/mute.dart';
import 'package:sh_self/modules/mute_handler.dart';
import 'package:sh_self/modules/mute_list.dart';
import 'package:sh_self/modules/offline.dart';
import 'package:sh_self/modules/offline_handler.dart';
import 'package:sh_self/modules/reload.dart';
import 'package:sh_self/modules/server.dart';
import 'package:sh_self/modules/spam.dart';
import 'package:sh_self/modules/spamf.dart';
import 'package:sh_self/utils/sh_database.dart';
import 'package:sh_self/utils/sh_telegram_app.dart';

String version = "1.0.0";
late ShDatabase database;
late ShTelegramApp telegramApp;

void runApp() {
  database = ShDatabase();
  telegramApp = ShTelegramApp(
    modules: [
      addf,
      delf,
      spamf,
      spam,
      server,
      evalModuleList,
      evalModuleDelete,
      evalInterpreter,
      evalCompiler,
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
