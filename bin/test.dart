import 'dart:async';
import 'dart:io';

import 'package:dart_console/dart_console.dart';
import 'package:sh_self/utils/sh_telegram_app.dart';

void updateOutput(List<String> lines) {
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
  stdout.write('\x1b[${lines.length}A');
  stdout.flush();
}

Future<void> main() async {
  final t = Table();
  t.insertColumn(
    header: column1Header,
  );
  t.insertColumn(
    header: 'Status                               ',
  );
  t.insertRows(table1Entries);
  for (var i = 0; i < 10; i++) {
    t.insertRow([i, i]);
    updateOutput(t.toString().split("\n"));
    await Future.delayed(const Duration(seconds: 1));
  }

  updateOutput(t.toString().split("\n"));
}

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
