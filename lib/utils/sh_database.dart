import 'dart:io';

import 'package:hive/hive.dart';
import 'package:path/path.dart';
import 'package:sh_self/utils/models/sh_message_type.dart';

import 'package:sh_self/utils/sh_open_tdlib.dart';

class ShDatabase {
  late Box<String> storage;
  late Box<List<int>> mutedUsers;

  ShDatabase() {
    Hive.init(_getDbPath());
    Hive.openBox<String>('storageBox').then((value) => storage = value);
    Hive.openBox<List<int>>('mutedUsersBox')
        .then((value) => mutedUsers = value);
  }

  void saveToDb(String key, String value) {
    storage.put(key, value);
  }

  String readFromDb(String key, {String defaultValue = ""}) {
    return storage.get(key, defaultValue: defaultValue) ?? '';
  }

  bool isMutedUser(ShMessageType messageType, int userId) {
    return mutedUsers.get(messageType)?.contains(userId) ?? false;
  }

  void muteUser(ShMessageType messageType, int userId) {
    if (!mutedUsers.containsKey(messageType)) {
      mutedUsers.put(messageType, []);
    }
    final List<int> userIds = mutedUsers.get(messageType) ?? [];
    userIds.add(userId);
    mutedUsers.put(messageType, userIds);
  }

  void unmuteUser(ShMessageType messageType, int userId) {
    final List<int> userIds = mutedUsers.get(messageType) ?? [];
    userIds.remove(userId);
    mutedUsers.put(messageType, userIds);
  }

  String _getDbPath() {
    if (isRunningOnSelfExecutable()) {
      final executableDir = dirname(Platform.executable);
      return join(executableDir, 'database');
    } else {
      return join(Directory.current.path, 'database');
    }
  }

  Future<void> close() async {
    storage.close();
    mutedUsers.close();
  }
}
