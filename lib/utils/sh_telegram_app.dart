import 'dart:async';
import 'dart:io';

import 'package:sh_self/sh_self.dart';
import 'package:sh_self/tdlib_dart/src/client/client.dart';
import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/models/sh_module.dart';
import 'package:sh_self/utils/module_loader.dart';

class ShTelegramApp {
  final List<void Function()> modules;
  late Client client;
  StreamSubscription<td.TdObject>? _eventsSubscription;
  td.User? me;
  bool isModulesLoaded = false;

  ShTelegramApp({this.modules = const []}) {
    client = Client.create();
    _eventsSubscription?.cancel();
    _eventsSubscription = client.updates.listen(_onNewEvent);
    client.initialize().then((value) {
      client.execute(const td.SetLogVerbosityLevel(newVerbosityLevel: 0));
      _printWelcome();
    });
    ProcessSignal.sigint.watch().listen((ProcessSignal signal) {
      stdout.writeln("\n\x1B[31mExiting...\x1B[0m");
      destroy();
      database.close().then((value) => exit(0));
    });
  }
  void _printWelcome() {
    _printPink(r'''
   _____ __       _____      ______
  / ___// /_     / ___/___  / / __/
  \__ \/ __ \    \__ \/ _ \/ / /_  
 ___/ / / / /   ___/ /  __/ / __/  
/____/_/ /_/   /____/\___/_/_/     
           
           ''');
    _printPink("Welcome to ShSelf v$version!");
    _printGreen("A Telegram assistant user-bot");
    _printCyan("Usage:");
    stdout.writeln(" 1. Log in to your Telegram account.");
    stdout.writeln(
      " 2. Send 'help' in chat to display the list of available commands.",
    );
  }

  void _printPink(String text) {
    stdout.writeln('\x1B[38;2;255;192;203m$text\x1B[0m'); // Pink text
  }

  void _printCyan(String message) {
    stdout.writeln('\x1B[38;2;0;255;255m$message\x1B[0m');
  }

  void _printGreen(String text) {
    stdout.writeln('\x1B[32m$text\x1B[0m');
  }

  void destroy() {
    client.destroy();
    _eventsSubscription?.cancel();
  }

  Future<void> _onNewEvent(td.TdObject event) async {
    if (me == null) {
      final td.TdObject result = await client.send(const td.GetMe());
      if (result is td.User) {
        me = result;
      }
    }
    if (!isModulesLoaded) isModulesLoaded = _loadModules();
    processModules(event as td.Update);
  }

  bool _loadModules() {
    for (final void Function() moduleRegistrar in modules) {
      moduleRegistrar();
    }
    ShModule.registeredModules.sort((a, b) => a.priority.compareTo(b.priority));
    stdout.writeln("${ShModule.registeredModules.length} modules loaded!");
    return true;
  }
}
