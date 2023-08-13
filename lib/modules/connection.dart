// ignore_for_file: type_literal_in_constant_pattern

import 'dart:io';

import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/models/sh_module.dart';

void connection() => ShModule.onRawUpdate(_function);
Future<void> _function(update) async {
  if (update is! td.UpdateConnectionState) return;
  final String terminalOut =
      '\r\x1B[34mConnection status: \x1B[0m${_getConnectionState(update)}';

  stdout.write(terminalOut);
}

String _getConnectionState(td.UpdateConnectionState update) {
  final stateType = update.state.runtimeType;

  // Define constants for connection states and their formatted strings
  const connectingMessage = '\x1B[33mConnecting...          \x1B[0m';
  const connectingToProxyMessage = '\x1B[33mConnecting to proxy... \x1B[0m';
  const updatingMessage = '\x1B[32mUpdating...            \x1B[0m';
  const waitingForNetworkMessage = '\x1B[31mWaiting for network... \x1B[0m';
  const connectedMessage = '\x1B[32mConnected              \x1B[0m';

  switch (stateType) {
    case td.ConnectionStateConnecting:
      return connectingMessage;
    case td.ConnectionStateConnectingToProxy:
      return connectingToProxyMessage;
    case td.ConnectionStateUpdating:
      return updatingMessage;
    case td.ConnectionStateWaitingForNetwork:
      return waitingForNetworkMessage;
    case td.ConnectionStateReady:
      return connectedMessage;
    default:
      return 'Unknown';
  }
}
