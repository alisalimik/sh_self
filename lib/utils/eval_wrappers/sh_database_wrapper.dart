import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:hive/hive.dart';
import 'package:sh_self/utils/models/sh_message_type.dart';
import 'package:sh_self/utils/sh_database.dart';

class $ShDatabase implements ShDatabase, $Instance {
  @override
  Box<List<int>>? mutedUsers;

  @override
  Box<String>? storage;

  @override
  String getDbPath() => $value.getDbPath();

  @override
  Future close() async => $value.close();

  @override
  bool isMutedUser(ShMessageType messageType, int userId) =>
      $value.isMutedUser(messageType, userId);

  @override
  void muteUser(ShMessageType messageType, int userId) =>
      $value.muteUser(messageType, userId);

  @override
  String readFromDb(String key, {String defaultValue = ""}) =>
      $value.readFromDb(key, defaultValue: defaultValue);

  @override
  void saveToDb(String key, String value) => $value.saveToDb(key, value);

  @override
  void unmuteUser(ShMessageType messageType, int userId) =>
      $value.unmuteUser(messageType, userId);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'storage':
        return $value.storage == null ? null : $Object($value.storage!);
      case 'mutedUsers':
        return $value.mutedUsers == null ? null : $Object($value.mutedUsers!);
      case 'saveToDb':
        return $Function((runtime, target, args) {
          $value.saveToDb(
            args.first?.$value as String,
            args.last?.$value as String,
          );
          return null;
        });
      case 'readFromDb':
        return $Function((runtime, target, args) {
          return $String(
            $value.readFromDb(
              args.first?.$value as String,
              defaultValue: args.last?.$value as String? ?? '',
            ),
          );
        });
      case 'isMutedUser':
        return $Function((runtime, target, args) {
          return $bool(
            $value.isMutedUser(
              args.first?.$value as ShMessageType,
              args.last?.$value as int,
            ),
          );
        });
      case 'muteUser':
        return $Function((runtime, target, args) {
          $value.muteUser(
            args.first?.$value as ShMessageType,
            args.last?.$value as int,
          );
          return null;
        });
      case 'unmuteUser':
        return $Function((runtime, target, args) {
          $value.unmuteUser(
            args.first?.$value as ShMessageType,
            args.last?.$value as int,
          );
          return null;
        });
      case 'close':
        return $Function((runtime, target, args) {
          return $Future.wrap($value.close());
        });
      case 'getDbPath':
        return $Function((runtime, target, args) {
          return $String($value.getDbPath());
        });
      case 'addModule':
        return $Function((runtime, target, args) {
          $value.addModule(
            args.first?.$value as String? ?? '',
            args.last?.$value as Map<String, String>? ?? {},
          );
          return const $null();
        });
      case 'getModule':
        return $Function((runtime, target, args) {
          return $Map
              .wrap($value.getModule(args.first?.$value as String? ?? ''));
        });
      case 'getModules':
        return $Function((runtime, target, args) {
          return $List.wrap($value.getModules() ?? []);
        });
      case 'removeModule':
        return $Function((runtime, target, args) {
          $value.removeModule(args.first?.$value as String? ?? '');
          return const $null();
        });
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  ShDatabase get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }

  final $Instance _superclass;

  @override
  final ShDatabase $value;

  $ShDatabase.wrap(this.$value) : _superclass = $Object($value);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $ShDatabase.wrap(ShDatabase());
  }

  static const $type = BridgeTypeRef(
    BridgeTypeSpec(
      'package:sh_self/utils/sh_database.dart',
      'ShDatabase',
    ),
  );

  static BridgeClassDef $declaration = BridgeClassDef(
    const BridgeClassType($type),
    constructors: {
      '': const BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
        ),
      )
    },
    fields: {
      'storage': const BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef.type(RuntimeTypes.objectType),
        ),
      ),
      'mutedUsers': const BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef.type(RuntimeTypes.objectType),
        ),
      )
    },
    methods: {
      'getDbPath': const BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef.type(
              RuntimeTypes.stringType,
            ),
          ),
        ),
      ),
      'close': const BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef.type(
              RuntimeTypes.futureType,
            ),
          ),
        ),
      ),
      'isMutedUser': const BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef.type(
              RuntimeTypes.boolType,
            ),
          ),
          params: [
            BridgeParameter(
              'messageType',
              BridgeTypeAnnotation(
                BridgeTypeRef.type(
                  RuntimeTypes.enumType,
                ),
              ),
              false,
            ),
            BridgeParameter(
              'userId',
              BridgeTypeAnnotation(
                BridgeTypeRef.type(
                  RuntimeTypes.intType,
                ),
              ),
              false,
            ),
          ],
        ),
      ),
      'muteUser': const BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef.type(
              RuntimeTypes.voidType,
            ),
          ),
          params: [
            BridgeParameter(
              'messageType',
              BridgeTypeAnnotation(
                BridgeTypeRef.type(
                  RuntimeTypes.enumType,
                ),
              ),
              false,
            ),
            BridgeParameter(
              'userId',
              BridgeTypeAnnotation(
                BridgeTypeRef.type(
                  RuntimeTypes.intType,
                ),
              ),
              false,
            ),
          ],
        ),
      ),
      'readFromDb': const BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef.type(
              RuntimeTypes.stringType,
            ),
          ),
          params: [
            BridgeParameter(
              'key',
              BridgeTypeAnnotation(
                BridgeTypeRef.type(
                  RuntimeTypes.stringType,
                ),
              ),
              false,
            ),
          ],
          namedParams: [
            BridgeParameter(
              'defaultValue',
              BridgeTypeAnnotation(
                BridgeTypeRef.type(
                  RuntimeTypes.stringType,
                ),
              ),
              true,
            ),
          ],
        ),
      ),
      'saveToDb': const BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef.type(
              RuntimeTypes.voidType,
            ),
          ),
          params: [
            BridgeParameter(
              'key',
              BridgeTypeAnnotation(
                BridgeTypeRef.type(
                  RuntimeTypes.stringType,
                ),
              ),
              false,
            ),
            BridgeParameter(
              'value',
              BridgeTypeAnnotation(
                BridgeTypeRef.type(
                  RuntimeTypes.stringType,
                ),
              ),
              false,
            ),
          ],
        ),
      ),
      'unmuteUser': const BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef.type(
              RuntimeTypes.voidType,
            ),
          ),
          params: [
            BridgeParameter(
              'messageType',
              BridgeTypeAnnotation(
                BridgeTypeRef.type(
                  RuntimeTypes.enumType,
                ),
              ),
              false,
            ),
            BridgeParameter(
              'userId',
              BridgeTypeAnnotation(
                BridgeTypeRef.type(
                  RuntimeTypes.intType,
                ),
              ),
              false,
            ),
          ],
        ),
      ),
      'addModule': const BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef.type(
              RuntimeTypes.voidType,
            ),
          ),
          params: [
            BridgeParameter(
              'id',
              BridgeTypeAnnotation(
                BridgeTypeRef.type(
                  RuntimeTypes.stringType,
                ),
              ),
              false,
            ),
            BridgeParameter(
              'm',
              BridgeTypeAnnotation(
                BridgeTypeRef.type(
                  RuntimeTypes.mapType,
                ),
              ),
              false,
            ),
          ],
        ),
      ),
      'getModule': const BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef.type(
              RuntimeTypes.mapType,
            ),
          ),
          params: [
            BridgeParameter(
              'id',
              BridgeTypeAnnotation(
                BridgeTypeRef.type(
                  RuntimeTypes.stringType,
                ),
              ),
              false,
            ),
          ],
        ),
      ),
      'getModules': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($List.$declaration.type.type),
        ),
      ),
      'removeModule': const BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef.type(
              RuntimeTypes.voidType,
            ),
          ),
          params: [
            BridgeParameter(
              'id',
              BridgeTypeAnnotation(
                BridgeTypeRef.type(
                  RuntimeTypes.stringType,
                ),
              ),
              false,
            ),
          ],
        ),
      ),
    },
    wrap: true,
  );

  @override
  Box<Map>? modules;

  @override
  void addModule(String id, Map<String, String> m) => $value.addModule(id, m);

  @override
  Map<String, String> getModule(String id) => $value.getModule(id);

  @override
  List<Map<String, String>>? getModules() => $value.getModules();

  @override
  void removeModule(String id) => $value.removeModule(id);
}
