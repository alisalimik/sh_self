import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:sh_self/utils/eval_wrappers/client_wrapper.dart';
import 'package:sh_self/utils/eval_wrappers/helper_wrapper.dart';
import 'package:sh_self/utils/eval_wrappers/sh_database_wrapper.dart';
import 'package:sh_self/utils/eval_wrappers/sh_telegram_app_wrapper.dart';
import 'package:sh_self/utils/helpers.dart';

class ShSelfEvalPlugin implements EvalPlugin {
  @override
  String get identifier => 'package:sh_self';

  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($Client.$declaration);
    registry.defineBridgeClass($ShDatabase.$declaration);
    registry.defineBridgeClass($ShTelegramApp.$declaration);
    registry.defineBridgeTopLevelFunction(editMessageAndAutoDeleteEvalDec);
    registry.defineBridgeTopLevelFunction(editMessageEvalDec);
    registry.defineBridgeTopLevelFunction(getMessageTextFromJsonEvalDec);
    registry.defineBridgeTopLevelFunction(getMessageChatIdFromJsonEvalDec);
    registry.defineBridgeTopLevelFunction(getMessageIdFromJsonEvalDec);
  }

  @override
  void configureForRuntime(Runtime runtime) {
    // runtime.registerBridgeFunc(
    //   'package:sh_self/tdlib_dart/src/client/client.dart',
    //   'Client.',
    //   (runtime, target, args) => $Client.$new(runtime, target, args),
    // );
    runtime.registerBridgeFunc(
      'package:sh_self/utils/sh_database.dart',
      'ShDatabase.',
      (runtime, target, args) => $ShDatabase.$new(runtime, target, args),
    );
    runtime.registerBridgeFunc(
      'package:sh_self/utils/sh_telegram_app.dart',
      'ShTelegramApp.',
      (runtime, target, args) => $ShTelegramApp.$new(runtime, target, args),
    );
    runtime.registerBridgeFunc(
      'package:sh_self/utils/helpers.dart',
      'editMessageAndAutoDeleteEval',
      (runtime, target, args) {
        editMessageAndAutoDeleteEval(
          (args[0]! as $int).$value,
          (args[1]! as $int).$value,
          (args[2]! as $String).$value,
        );
        return const $null();
      },
    );
    runtime.registerBridgeFunc(
      'package:sh_self/utils/helpers.dart',
      'editMessageEval',
      (runtime, target, args) {
        return $Future.wrap(
          editMessageEval(
            (args[0]! as $int).$value,
            (args[1]! as $int).$value,
            (args[2]! as $String).$value,
          ),
        );
      },
    );
    runtime.registerBridgeFunc(
      'package:sh_self/utils/helpers.dart',
      'getMessageTextFromJsonEval',
      (runtime, target, args) {
        return $String(
          getMessageTextFromJsonEval(
            (args[0]! as $Map<String, dynamic>).$value,
          ),
        );
      },
    );
    runtime.registerBridgeFunc(
      'package:sh_self/utils/helpers.dart',
      'getMessageIdFromJsonEval',
      (runtime, target, args) {
        return $int(
          getMessageIdFromJsonEval(
            (args[0]! as $Map<String, dynamic>).$value,
          ),
        );
      },
    );
    runtime.registerBridgeFunc(
      'package:sh_self/utils/helpers.dart',
      'getMessageChatIdFromJsonEval',
      (runtime, target, args) {
        return $int(
          getMessageChatIdFromJsonEval(
            (args[0]! as $Map<String, dynamic>).$value,
          ),
        );
      },
    );
  }
}
