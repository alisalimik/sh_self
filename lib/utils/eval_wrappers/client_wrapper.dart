import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:sh_self/tdlib_dart/src/api/function.dart';
import 'package:sh_self/tdlib_dart/src/api/object.dart';
import 'package:sh_self/tdlib_dart/src/client/client.dart';

class $Client implements Client, $Instance {
  @override
  void destroy() => $value.destroy();

  @override
  T execute<T extends TdObject>(TdFunction function) =>
      $value.execute(function);

  @override
  Future<void> initialize() => $value.initialize();

  @override
  Future<T> send<T extends TdObject>(TdFunction function) =>
      $value.send(function);

  @override
  Stream<TdObject> get updates => $value.updates;

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'updates':
        return $Object($value.updates);
      case 'initialize':
        return $Function((runtime, target, args) {
          return $Future.wrap(
            $value.initialize(),
          );
        });
      case 'execute':
        return $Function((runtime, target, args) {
          return $Object(
            $value.execute(args.first?.$value as TdFunction),
          );
        });
      case 'send':
        return $Function((runtime, target, args) {
          return $Future.wrap(
            $value.send(args.first?.$value as TdFunction),
          );
        });
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
  Client get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final Client $value;
  final $Instance _superclass;
  $Client.wrap(this.$value) : _superclass = $Object($value);
  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Client.wrap(Client.create());
  }

  static const $type = BridgeTypeRef(
    BridgeTypeSpec(
      'package:sh_self/tdlib_dart/src/client/client.dart',
      'Client',
    ),
  );

  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      'create': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
        ),
      ),
    },
    fields: {
      'updates': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef.type(RuntimeTypes.objectType),
        ),
      ),
    },
    methods: {
      'initialize': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef.type(
              RuntimeTypes.futureType,
            ),
          ),
        ),
      ),
      'destroy': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef.type(
              RuntimeTypes.voidType,
            ),
          ),
        ),
      ),
      'send': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef.type(
              RuntimeTypes.futureType,
            ),
          ),
          params: [
            BridgeParameter(
              'function',
              BridgeTypeAnnotation(
                BridgeTypeRef.type(
                  RuntimeTypes.objectType,
                ),
              ),
              false,
            ),
          ],
        ),
      ),
      'execute': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef.type(
              RuntimeTypes.objectType,
            ),
          ),
          params: [
            BridgeParameter(
              'function',
              BridgeTypeAnnotation(
                BridgeTypeRef.type(
                  RuntimeTypes.objectType,
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
}
