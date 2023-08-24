import 'dart:io';

import 'package:sh_self/sh_self.dart';
import 'package:sh_self/utils/sh_open_tdlib.dart';

import 'package:sh_self/utils/sh_platform.dart';

Future<void> main(List<String> args) async {
  if (args.isNotEmpty && args.first == "test") {
    _testEnvironment();
    return;
  }
  final ShPlatformInfoImpl platformInfo = ShPlatformInfoImpl();
  await handleTDlib(platformInfo);
  runApp();
}

void _testEnvironment() {
  stdout.write("Operating sytem: ${Platform.operatingSystem}");
  stdout.write("Operating system version: ${Platform.operatingSystemVersion}");
  stdout.write("Number of processors: ${Platform.numberOfProcessors}\n");
  stdout.write("Executable: ${Platform.executable}");
  stdout.write("Executable args: ${Platform.executableArguments}");
  stdout.write("Resolved executable: ${Platform.resolvedExecutable}\n");
  stdout.write("Script scheme: ${Platform.script.scheme}");
  stdout.write("Script path: ${Platform.script.path}");
  stdout.write("Current dir: ${Directory.current.uri}");
  stdout.write("Current dir: ${Directory.current.path}");
  stdout.write("dart runtime: ${!isRunningOnSelfExecutable()}");
}

final previousStdout = stdout;
