import 'package:dart_eval/dart_eval_bridge.dart';

BridgeFunctionDeclaration editMessageAndAutoDeleteEvalDec =
    const BridgeFunctionDeclaration(
  'package:sh_self/utils/helpers.dart',
  'editMessageAndAutoDeleteEval',
  BridgeFunctionDef(
    returns: BridgeTypeAnnotation(
      BridgeTypeRef.type(RuntimeTypes.voidType),
    ),
    params: [
      BridgeParameter(
        'chatId',
        BridgeTypeAnnotation(
          BridgeTypeRef.type(RuntimeTypes.intType),
        ),
        false,
      ),
      BridgeParameter(
        'messageId',
        BridgeTypeAnnotation(
          BridgeTypeRef.type(RuntimeTypes.intType),
        ),
        false,
      ),
      BridgeParameter(
        'text',
        BridgeTypeAnnotation(
          BridgeTypeRef.type(RuntimeTypes.stringType),
        ),
        false,
      ),
    ],
  ),
);

BridgeFunctionDeclaration editMessageEvalDec = const BridgeFunctionDeclaration(
  'package:sh_self/utils/helpers.dart',
  'editMessageEval',
  BridgeFunctionDef(
    returns: BridgeTypeAnnotation(
      BridgeTypeRef.type(RuntimeTypes.futureType),
    ),
    params: [
      BridgeParameter(
        'chatId',
        BridgeTypeAnnotation(
          BridgeTypeRef.type(RuntimeTypes.intType),
        ),
        false,
      ),
      BridgeParameter(
        'messageId',
        BridgeTypeAnnotation(
          BridgeTypeRef.type(RuntimeTypes.intType),
        ),
        false,
      ),
      BridgeParameter(
        'text',
        BridgeTypeAnnotation(
          BridgeTypeRef.type(RuntimeTypes.stringType),
        ),
        false,
      ),
    ],
  ),
);

BridgeFunctionDeclaration getMessageTextFromJsonEvalDec =
    const BridgeFunctionDeclaration(
  'package:sh_self/utils/helpers.dart',
  'getMessageTextFromJsonEval',
  BridgeFunctionDef(
    returns: BridgeTypeAnnotation(
      BridgeTypeRef.type(RuntimeTypes.stringType),
    ),
    params: [
      BridgeParameter(
        'update',
        BridgeTypeAnnotation(
          BridgeTypeRef.type(RuntimeTypes.mapType),
        ),
        false,
      ),
    ],
  ),
);

BridgeFunctionDeclaration getMessageChatIdFromJsonEvalDec =
    const BridgeFunctionDeclaration(
  'package:sh_self/utils/helpers.dart',
  'getMessageChatIdFromJsonEval',
  BridgeFunctionDef(
    returns: BridgeTypeAnnotation(
      BridgeTypeRef.type(RuntimeTypes.intType),
    ),
    params: [
      BridgeParameter(
        'update',
        BridgeTypeAnnotation(
          BridgeTypeRef.type(RuntimeTypes.mapType),
        ),
        false,
      ),
    ],
  ),
);

BridgeFunctionDeclaration getMessageIdFromJsonEvalDec =
    const BridgeFunctionDeclaration(
  'package:sh_self/utils/helpers.dart',
  'getMessageIdFromJsonEval',
  BridgeFunctionDef(
    returns: BridgeTypeAnnotation(
      BridgeTypeRef.type(RuntimeTypes.intType),
    ),
    params: [
      BridgeParameter(
        'update',
        BridgeTypeAnnotation(
          BridgeTypeRef.type(RuntimeTypes.mapType),
        ),
        false,
      ),
    ],
  ),
);
