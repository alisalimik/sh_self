import 'dart:async';
import 'dart:io';

import 'package:dart_console/dart_console.dart';
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
  final console = Console();
  int cliRefresh = 0;
  ShTelegramApp({this.modules = const []}) {
    client = Client.create();
    _eventsSubscription?.cancel();
    _eventsSubscription = client.updates.listen(_onNewEvent);
    client.initialize().then((value) {
      client.execute(const td.SetLogVerbosityLevel(newVerbosityLevel: 0));
      _updateCli();
    });
    ProcessSignal.sigint.watch().listen((ProcessSignal signal) {
      stdout.writeln("\n\x1B[31mExiting...\x1B[0m");
      destroy();
      database.close().then((value) => exit(0));
    });
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
        setFullName("${result.firstName} ${result.lastName}");
        setUsername(
          result.usernames?.activeUsernames.first ?? result.id.toString(),
        );
      }
    }
    if (!isModulesLoaded) isModulesLoaded = _loadModules();
    processModules(event as td.Update);
  }

  void _updateOutput(List<String> lines) {
    // Move the cursor to the beginning of the output block
    stdout.write('\x1b[${lines.length}A');

    // Clear the lines
    for (var i = 0; i < lines.length; i++) {
      stdout.write('\x1b[K\x1b[1B'); // Clear current line and move down
    }

    // Print the updated lines
    for (var line in lines) {
      stdout.writeln(line);
    }

    // Move the cursor back to the original position
    stdout.write('\x1b[${lines.length * cliRefresh}A');
    //stdout.flush();
    cliRefresh += 1;
  }

  void clearScreen() {
    console.clearScreen();
    if (Platform.isWindows) {
      // For Windows, use the 'cls' command to clear the screen
      Process.runSync('cmd', ['/c', 'cls'], runInShell: true);
    } else {
      // For other platforms, use ANSI escape code to clear the screen
      stdout.write('\x1B[2J\x1B[0;0H');
    }
  }

  void _updateCli() {
    List<Table> tables = _getTables();
    clearScreen();
    console.resetCursorPosition();
    tables.forEach((element) {
      console.writeLine(element);
    });
    /*
    //console.clearScreen();
    console.resetCursorPosition();
    List<Table> tables = _getTables();
    List<String> out = tables.first.toString().split("\n") +
        tables.last.toString().split("\n");

    // Clear the lines
    for (var i = 0; i < (out.length); i++) {
      // stdout.write('\x1b[K\x1b[1B'); // Clear current line and move down
      console.eraseLine();
      console.cursorDown();
    }
    // Print the updated lines
    for (final line in out) {
      console.writeLine(line);
    }
    for (int c = 0; c < (out.length) * (cliRefresh); c++) {
      console.cursorUp();
    }
    // Move the cursor back to the original position
    //stdout.write('\x1b[${(out.length + 1) * (cliRefresh + 1)}A');
    //stdout.flush();
    //stdout.flush();
    cliRefresh += 1;
    */
  }

  List<Table> _getTables() {
    final t = Table();
    t.insertColumn(
      header: column1Header,
      // width: console.windowWidth,
    );
    t.insertColumn(
      header: 'Status                               ',
      //   width: console.windowWidth,
    );
    t.insertRows(table1Entries);
    final t2 = Table();
    t2.insertColumn(
      header: 'Updates                              ',
      //    width: console.windowWidth ~/ 2,
    );
    t2.insertColumn(
      header: 'Logs                                 ',
      //   width: console.windowWidth ~/ 2,
    );
    t2.insertRows(table2entries);
    return [t, t2];
  }

  bool _loadModules() {
    for (final void Function() moduleRegistrar in modules) {
      moduleRegistrar();
    }
    ShModule.registeredModules.sort((a, b) => a.priority.compareTo(b.priority));
    column1Header =
        'ShSelf v1.0.0       ${ShModule.registeredModules.length} Modules loaded';
    return true;
  }

  void setConnectionStatus(String newStatus) {
    table1Entries.first.last = newStatus;
    _updateCli();
  }

  void setAuthStatus(String newStatus) {
    table1Entries[1].last = newStatus;
    _updateCli();
  }

  void setFullName(String newStatus) {
    table1Entries[3].last = "Fullname: $newStatus";
    _updateCli();
  }

  void setUsername(String newStatus) {
    table1Entries[4].last = "Username: $newStatus";
    _updateCli();
  }

  void addUpdate(String newUpdate) {
    for (int i = 0; i < table2entries.length; i++) {
      if (i == table2entries.length - 1) {
        table2entries[i].first = newUpdate;
      } else {
        table2entries[i].first = table2entries[i + 1].first;
      }
    }
    _updateCli();
  }

  void addLog(String newLog) {
    for (int i = 0; i < table2entries.length; i++) {
      if (i == table2entries.length - 1) {
        table2entries[i].last = newLog;
      } else {
        table2entries[i].last = table2entries[i + 1].last;
      }
    }
    _updateCli();
  }
}

String column1Header = 'ShSelf v1.0.0       0 Modules loaded';
List<List<String>> table1Entries = [
  [
    pinker('   _____ __       _____      ______'),
    'Connection status:',
  ],
  [
    pinker('  / ___// /_     / ___/___  / / __/'),
    'Autorization status:',
  ],
  [
    pinker(r'  \__ \/ __ \    \__ \/ _ \/ / /_  '),
    ' ',
  ],
  [
    pinker(' ___/ / / / /   ___/ /  __/ / __/  '),
    'Fullname:',
  ],
  [
    pinker(r'/____/_/ /_/   /____/\___/_/_/     '),
    'Username:',
  ],
  [
    '                                   ',
    '                                   ',
  ],
];
List<List<Object>> table2entries = [
  [
    '',
    '',
  ],
  [
    '',
    '',
  ],
  [
    '',
    '',
  ],
  [
    '',
    '',
  ],
  [
    '',
    '',
  ],
  [
    '',
    '',
  ],
  [
    '',
    '',
  ],
  [
    '',
    '',
  ],
  [
    '',
    '',
  ],
];
String pinker(String text) => '\x1B[38;2;255;192;203m$text\x1B[0m';
