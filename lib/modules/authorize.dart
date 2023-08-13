import 'dart:convert';
import 'dart:io';

import 'package:sh_self/sh_self.dart';
import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/config_reader.dart';
import 'package:sh_self/utils/models/sh_module.dart';

void autorize() => ShModule.onUpdateAuthorizationState(_function);
Future<void> _function(update) async {
  if (update is! td.UpdateAuthorizationState) return;
  if (update.authorizationState is td.AuthorizationStateWaitTdlibParameters) {
    await telegramApp.client.send(await getConfig());
  } else if (update.authorizationState
      is td.AuthorizationStateWaitPhoneNumber) {
    if (!stdout.hasTerminal) {
      throw Exception(_noTerminal);
    }
    stdout.write("Please enter mobile phone number (example: +12602800093): ");
    var line = stdin.readLineSync(encoding: utf8);
    while (line == null || line.trim().isEmpty) {
      stdout.write("Bad phone entered please try again: ");
      line = stdin.readLineSync(encoding: utf8);
    }
    await telegramApp.client.send(
      td.SetAuthenticationPhoneNumber(phoneNumber: line),
    );
  } else if (update.authorizationState is td.AuthorizationStateWaitCode) {
    if (!stdout.hasTerminal) {
      throw Exception(_noTerminal);
    }
    stdout.write("Please enter code sent to your active Telegram app: ");
    var line = stdin.readLineSync(encoding: utf8);
    while (line == null || line.trim().isEmpty) {
      stdout.write("Bad code entered please try again: ");
      line = stdin.readLineSync(encoding: utf8);
    }
    await telegramApp.client.send(td.CheckAuthenticationCode(code: line));
  }
}

const String _noTerminal =
    "Terminal not attached! in authorization state you need terminal for input data! use: dart run instead off vscode debugger";
