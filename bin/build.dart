import 'dart:io';
import 'package:archive/archive_io.dart';
import 'package:path/path.dart' as path;
import 'package:sh_self/utils/sh_open_tdlib.dart';
import 'package:sh_self/utils/sh_platform.dart';

Stdout terminalOut = stdout;
String platform = ShPlatformInfoImpl().operatingSystem;
const String scriptToCompile = "sh_self.dart";
Directory buildTargetOutputDir = Directory.current;
const List<String> supportedSystems = [
  "linux",
  "macos",
  "windows",
  "host",
];

void main(List<String> args) async {
  if (isValidCommand(args)) {
    if (!await targetHasTdlib()) {
      await downloadAndExtractTDLib();
    }
    await createBuildDir();
    terminalOut.writeln("Copying tdlib for $platform");
    copyTdlib();
    terminalOut.writeln("Starting build for platform $platform");
    if (await compileScript()) {
      terminalOut.writeln("Archiving...");
      final String output = archiveBuild();
      terminalOut.writeln("Build finished successfully!");
      terminalOut.writeln("Output: $output");
    } else {
      terminalOut.writeln("Build error!");
    }
  }
}

Future<bool> targetHasTdlib() async {
  final tdlibDir = Directory(
    path.join(Directory.current.path, "tdlib", platform, getPlatformArch()),
  );
  return await tdlibDir.exists() &&
      await tdlibDir.list().any((entity) => entity.path.contains("tdjson"));
}

Future<void> createBuildDir([String buildPath = "build"]) async {
  final buildDir = Directory(path.join(Directory.current.path, buildPath));
  if (!(await buildDir.exists() || await (await buildDir.create()).exists())) {
    terminalOut.writeln("Cannot create 'build' directory");
  }
  buildTargetOutputDir =
      Directory(path.join(Directory.current.path, buildPath, platform));
  if (!await buildTargetOutputDir.exists()) {
    await buildTargetOutputDir.create();
  }
}

String getExecutableExtension() => platform == "windows" ? ".exe" : "";
String getOutputPath() => path.join(
      buildTargetOutputDir.path,
      "${scriptToCompile.split(".").first}${getExecutableExtension()}",
    );

bool isValidCommand(List<String> args) {
  final executeCommand =
      Platform.script.path.endsWith(".aot") ? "dartaotruntime" : "dart run";
  if (args.isEmpty || !supportedSystems.contains(args.first)) {
    if (terminalOut.hasTerminal) {
      terminalOut.writeln(
        "Usage: $executeCommand ${Platform.script.pathSegments.last} ${supportedSystems.join('|')} [optional source to compile]",
      );
    }
    return false;
  }
  if (args.first == "host") {
    platform = ShPlatformInfoImpl().operatingSystem;
  } else {
    platform = args.first;
  }
  return true;
}

void copyTdlib() {
  copyDirectorySync(
    Directory(
      path.join(
        Directory.current.path,
        "tdlib",
        platform,
        getPlatformArch(),
      ),
    ),
    Directory(path.join(buildTargetOutputDir.path, getPlatformArch())),
  );
}

void copyDirectorySync(Directory source, Directory destination) {
  if (!destination.existsSync()) {
    destination.createSync(recursive: true);
  }

  source.listSync().forEach((entity) {
    final newPath = path.join(destination.path, path.basename(entity.path));
    if (entity is File) {
      entity.copySync(newPath);
    } else if (entity is Directory) {
      copyDirectorySync(entity, Directory(newPath));
    }
  });
}

Future<bool> compileScript([String? newPlatform]) async {
  if (!supportedSystems.contains(newPlatform ?? platform)) return false;
  try {
    final process = await Process.start("dart", [
      "compile",
      "exe",
      "bin/$scriptToCompile",
      "--target-os",
      newPlatform ?? platform,
      "-o",
      getOutputPath(),
    ]);
    await stdout.addStream(process.stdout);
    return await process.exitCode == 0;
  } catch (e) {
    terminalOut.writeln("Error during compilation: $e");
    return false;
  }
}

String archiveBuild() {
  final zipPath = path.join(buildTargetOutputDir.path);
  final encoder = ZipFileEncoder();
  final armDir = Directory(path.join(zipPath, "arm64"));
  final amdDir = Directory(path.join(zipPath, "x64"));
  encoder.create(
    path.join(
      zipPath,
      "${scriptToCompile.split(".").first}-$platform-${getPlatformArch()}.zip",
    ),
  );
  if (amdDir.existsSync()) {
    encoder.addDirectory(amdDir);
  }
  if (armDir.existsSync()) {
    encoder.addDirectory(armDir);
  }
  encoder.addFile(
    File(
      path.join(
        zipPath,
        scriptToCompile.split(".").first + getExecutableExtension(),
      ),
    ),
  );
  encoder.close();
  return encoder.zipPath;
}
