import 'dart:io';

abstract class ShPlatformInfo {
  bool get isMacOS;
  bool get isWindows;
  bool get isLinux;
  bool get isAndroid;
  bool get isIOS;
  String get operatingSystem;
}

class ShPlatformInfoImpl implements ShPlatformInfo {
  @override
  bool get isMacOS => Platform.isMacOS;

  @override
  bool get isWindows => Platform.isWindows;

  @override
  bool get isLinux => Platform.isLinux;

  @override
  bool get isAndroid => Platform.isAndroid;

  @override
  bool get isIOS => Platform.isIOS;

  @override
  String get operatingSystem {
    if (Platform.isLinux) {
      return 'linux';
    } else {
      return Platform.operatingSystem;
    }
  }
}
