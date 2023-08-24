import 'dart:ffi';
import 'dart:io';

import 'package:archive/archive.dart';
import 'package:http/http.dart';
import 'package:path/path.dart';
import 'package:sh_self/utils/sh_platform.dart';
import 'package:system_info2/system_info2.dart';

List<DynamicLibrary> openedShredLibs = [];

Future<void> handleTDlib(ShPlatformInfo platformInfo) async {
  if (!await resolveTDlib(platformInfo)) {
    String libDir = '';
    if (isRunningOnSelfExecutable()) {
      libDir = join(dirname(Platform.executable), getPlatformArch());
    }
    await downloadAndExtractTDLib(libDir);
  }
  openTDlibDependecies(platformInfo);
}

Future<bool> resolveTDlib(ShPlatformInfo platformInfo) async {
  final List<String> requiredLibNames = getRequiredLibs(platformInfo);
  for (final String libName in requiredLibNames) {
    late String libPath;
    if (isRunningOnSelfExecutable()) {
      final executableDir = dirname(Platform.executable);
      libPath = join(executableDir, getPlatformArch(), libName);
    } else {
      libPath = join(
        Directory.current.path,
        'tdlib',
        platformInfo.operatingSystem,
        getPlatformArch(),
        libName,
      );
    }
    if (!await File(libPath).exists()) {
      return false;
    }
  }
  return true;
}

void openTDlibDependecies(ShPlatformInfo platformInfo) {
  final List<String> requiredLibNames = getRequiredLibs(platformInfo);
  for (final String libName in requiredLibNames) {
    late String libPath;
    if (isRunningOnSelfExecutable()) {
      final executableDir = dirname(Platform.executable);
      libPath = join(executableDir, getPlatformArch(), libName);
    } else {
      libPath = join(
        Directory.current.path,
        'tdlib',
        platformInfo.operatingSystem,
        getPlatformArch(),
        libName,
      );
    }
    final lib = DynamicLibrary.open(libPath);
    if (libPath.contains('tdjson')) {
      final f = lib
          .lookupFunction<Void Function(Int8, Bool), void Function(int, bool)>(
        'td_set_log_verbosity_level',
        isLeaf: true,
      );
      f(0, true);
    }
    openedShredLibs.add(lib);
  }
}

Map<String, Map<String, List<String>>> librariesToLoad = {
  'linux': {
    'x64': ['libtdjson.so'],
    'arm64': ['libtdjson.so'],
  },
  'macos': {
    'x64': ['libtdjson.dylib'],
    'arm64': ['libtdjson.dylib'],
  },
  'windows': {
    'x64': [
      'zlib1.dll',
      'libcrypto-3-x64.dll',
      'libssl-3-x64.dll',
      'tdjson.dll',
    ],
    'arm64': [
      'zlib1.dll',
      'libcrypto-3-arm64.dll',
      'libssl-3-arm64.dll',
      'tdjson.dll',
    ],
  },
};

String getPlatformArch() {
  return SysInfo.kernelArchitecture == ProcessorArchitecture.arm64
      ? 'arm64'
      : 'x64';
}

Future<void> downloadAndExtractTDLib([String downloadPath = '']) async {
  final Map<String, Map<String, String>> downloadUrls = {
    'macos': {
      'arm64':
          'https://github.com/alisalimik/sh_self/releases/download/tdlib-1.8.15/tdlib-macos-arm64.zip',
      'x64':
          'https://github.com/alisalimik/sh_self/releases/download/tdlib-1.8.15/tdlib-macos-x64.zip',
    },
    'windows': {
      'arm64':
          'https://github.com/alisalimik/sh_self/releases/download/tdlib-1.8.15/tdlib-windows-arm64.zip',
      'x64':
          'https://github.com/alisalimik/sh_self/releases/download/tdlib-1.8.15/tdlib-windows-x64.zip',
    },
    'linux': {
      'arm64':
          'https://github.com/alisalimik/sh_self/releases/download/tdlib-1.8.15/tdlib-linux-arm64.zip',
      'x64':
          'https://github.com/alisalimik/sh_self/releases/download/tdlib-1.8.15/tdlib-linux-x64.zip',
    },
  };
  final tempDir = Directory(join(Directory.current.path, '.tmp'));
  final tdlibDir = downloadPath != ''
      ? Directory(downloadPath)
      : Directory(
          join(
            Directory.current.path,
            'tdlib',
            Platform.operatingSystem,
            getPlatformArch(),
          ),
        );
  if (!tdlibDir.existsSync()) {
    tdlibDir.createSync(recursive: true);
  }
  if (!await tempDir.exists()) {
    await tempDir.create(recursive: true);
  }
  final String downloadUrl =
      downloadUrls[Platform.operatingSystem]?[getPlatformArch()] ?? '';
  if (!tdlibDir.existsSync()) {
    tdlibDir.createSync(recursive: true);
  }
  final File downloadFile =
      File(join(tempDir.path, downloadUrl.split("/").last));
  final client = Client();
  final StreamedResponse response =
      await client.send(Request("GET", Uri.parse(downloadUrl)));
  final length = response.contentLength;
  int received = 0;
  final sink = downloadFile.openWrite();

  await response.stream.map((s) {
    received += s.length;
    final String progressBar =
        "Downloading TDlib ${getPlatformArch()}: ${((received / length!) * 100).toStringAsFixed(2)} %";
    if (received == length) {
      stdout.write('\r$progressBar\n');
    } else {
      stdout.write('\r$progressBar');
    }
    return s;
  }).pipe(sink);
  final xipDecoder = ZipDecoder();
  final Archive archive =
      xipDecoder.decodeBytes(await downloadFile.readAsBytes());
  for (final file in archive) {
    final extractedFilePath = '${tdlibDir.path}/../${file.name}';
    if (file.isFile) {
      final fileDir = Directory(extractedFilePath).parent;
      if (!fileDir.existsSync()) {
        fileDir.createSync(recursive: true);
      }
      File(extractedFilePath)
        ..createSync()
        ..writeAsBytesSync(file.content as List<int>);
    }
  }
  await tempDir.delete(recursive: true);
}

bool isRunningOnSelfExecutable() {
  if (Platform.executable.endsWith('dart') ||
      Platform.executable.endsWith('dart.exe') ||
      Platform.executable.contains('dartaotruntime')) {
    return false;
  }
  return true;
}

List<String> getRequiredLibs(ShPlatformInfo platformInfo) {
  return librariesToLoad[platformInfo.operatingSystem]?[getPlatformArch()] ??
      [];
}
