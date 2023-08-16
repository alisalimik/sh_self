import 'dart:io';

import 'package:hive/hive.dart';
import 'package:path/path.dart';
import 'package:sh_self/utils/models/sh_message_type.dart';

import 'package:sh_self/utils/sh_open_tdlib.dart';

class ShDatabase {
  Box<String>? storage;
  Box<List<int>>? mutedUsers;
  Box<Map>? modules;

  ShDatabase() {
    Hive.init(getDbPath());
    Hive.openBox<String>('storageBox').then((value) => storage = value);
    Hive.openBox<List<int>>('mutedUsersBox')
        .then((value) => mutedUsers = value);
    Hive.openBox<Map>('modulesBox').then((value) => modules = value);
  }
  void saveToDb(String key, String value) {
    storage?.put(key, value);
  }

  String readFromDb(String key, {String defaultValue = ""}) {
    return storage?.get(key, defaultValue: defaultValue) ?? '';
  }

  bool isMutedUser(ShMessageType messageType, int userId) {
    return mutedUsers?.get(messageType)?.contains(userId) ?? false;
  }

  void muteUser(ShMessageType messageType, int userId) {
    if (mutedUsers?.containsKey(messageType) == false) {
      mutedUsers?.put(messageType, []);
    }
    final List<int> userIds = mutedUsers?.get(messageType) ?? [];
    userIds.add(userId);
    mutedUsers?.put(messageType, userIds);
  }

  void unmuteUser(ShMessageType messageType, int userId) {
    final List<int> userIds = mutedUsers?.get(messageType) ?? [];
    userIds.remove(userId);
    mutedUsers?.put(messageType, userIds);
  }

  String getDbPath() {
    if (isRunningOnSelfExecutable()) {
      final executableDir = dirname(Platform.executable);
      return join(executableDir, 'database');
    } else {
      return join(Directory.current.path, 'database');
    }
  }

  void addModule(String id, Map<String, String> m) {
    modules?.put(id, m);
  }

  void removeModule(String id) {
    modules?.delete(id);
  }

  Map<String, String> getModule(String id) {
    return modules?.get(id) as Map<String, String>? ?? {};
  }

  List<Map<String, String>>? getModules() {
    return modules?.values.map((map) {
      final Map<String, String> newMap = {};
      map.forEach((key, value) {
        newMap[key.toString()] = value.toString();
      });
      return newMap;
    }).toList();
  }

  Future close() async {
    await storage?.close();
    await mutedUsers?.close();
    await modules?.close();
  }
}
