import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/sh_open_tdlib.dart';

Future<td.SetTdlibParameters> getConfig() async {
  final configFile = File(tdlibConfigPath());
  String configText = getDefaultConfig();
  if (await configFile.exists()) {
    configFile.openRead();
    configText = await configFile.readAsString();
  } else {
    configFile.openWrite();
    configFile.writeAsString(configText);
  }
  return td.SetTdlibParameters.fromMap(
    const JsonDecoder().convert(configText) as Map<String, dynamic>,
  );
}

String getDefaultConfig() {
  return '''
{
    "useTestDc": false,
    "databaseDirectory": "./database",
    "filesDirectory": "./files",
    "databaseEncryptionKey": "",
    "useFileDatabase": true,
    "useChatInfoDatabase": true,
    "useMessageDatabase": true,
    "useSecretChats": false,
    "apiId": 25951700,
    "apiHash": "985b34c285f9ff8ce02123f1f1bc03f3",
    "systemLanguageCode": "en",
    "deviceModel": "Dart VM",
    "systemVersion":"",
    "applicationVersion": "1.0.0",
    "enableStorageOptimizer": true,
    "ignoreFileNames": false
  }''';
}

String tdlibConfigPath() {
  if (isRunningOnSelfExecutable()) {
    final executableDir = path.dirname(Platform.executable);
    return path.join(executableDir, 'config.json');
  } else {
    return path.join(Directory.current.path, 'config.json');
  }
}
