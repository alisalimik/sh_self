// ignore: implementation_imports
import 'package:dart_console/src/console.dart';
import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:sh_self/tdlib_dart/src/api/objects/user.dart';
import 'package:sh_self/tdlib_dart/src/client/client.dart';
import 'package:sh_self/utils/eval_wrappers/client_wrapper.dart';
import 'package:sh_self/utils/sh_telegram_app.dart';

class $ShTelegramApp implements ShTelegramApp, $Instance {
  @override
  Client get client => $value.client;
  @override
  set client(Client newClient) => $value.client = newClient;
  @override
  bool get isModulesLoaded => $value.isModulesLoaded;
  @override
  set isModulesLoaded(bool newValue) => $value.isModulesLoaded = newValue;

  @override
  User? get me => $value.me;

  @override
  set me(User? newValue) => $value.me = newValue;

  @override
  void destroy() => $value.destroy();

  @override
  List<void Function()> get modules => $value.modules;

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'client':
        return $Client.wrap($value.client);
      case 'isModulesLoaded':
        return $bool($value.isModulesLoaded);
      case 'me':
        return $value.me != null ? $Object($value.me!) : null;
      case 'modules':
        return $Object($value.modules);
      case 'destroy':
        return $Function((runtime, target, args) {
          $value.destroy();
          return null;
        });
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  ShTelegramApp get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final ShTelegramApp $value;
  final $Instance _superclass;

  static const $type = BridgeTypeRef(
    BridgeTypeSpec(
      'package:sh_self/utils/sh_telegram_app.dart',
      'ShTelegramApp',
    ),
  );

  $ShTelegramApp.wrap(this.$value) : _superclass = $Object($value);
  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $ShTelegramApp.wrap(ShTelegramApp());
  }

  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'modules',
              BridgeTypeAnnotation(
                BridgeTypeRef.type(RuntimeTypes.objectType),
              ),
              true,
            ),
          ],
        ),
      ),
    },
    fields: {
      'client': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef.type(RuntimeTypes.objectType),
        ),
      ),
      'isModulesLoaded': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef.type(RuntimeTypes.boolType),
        ),
      ),
      'me': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef.type(RuntimeTypes.objectType),
        ),
      ),
      'modules': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef.type(RuntimeTypes.objectType),
        ),
      ),
    },
    methods: {
      'destroy': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef.type(
              RuntimeTypes.voidType,
            ),
          ),
        ),
      ),
    },
    wrap: true,
  );

  @override
  // TODO: implement console
  Console get console => throw UnimplementedError();
  
  @override
  void setConnectionStatus(String newStatus) {
    // TODO: implement setConnectionStatus
  }
  
  @override
  void setAuthStatus(String newStatus) {
    // TODO: implement setAuthStatus
  }
  
  @override
  void setFullName(String newStatus) {
    // TODO: implement setFullName
  }
  
  @override
  void setUsername(String newStatus) {
    // TODO: implement setUsername
  }
  
  @override
  void addUpdate(String newUpdate) {
    // TODO: implement addUpdate
  }
  
  @override
  void addLog(String newLog) {
    // TODO: implement addLog
  }
  
  @override
  int cliRefresh = 0;
  
  @override
  void clearScreen() {
    // TODO: implement clearScreen
  }
}
