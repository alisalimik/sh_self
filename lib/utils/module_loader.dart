import 'dart:io';

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:sh_self/sh_self.dart';
import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/eval_wrappers/sh_database_wrapper.dart';
import 'package:sh_self/utils/eval_wrappers/sh_telegram_app_wrapper.dart';
import 'package:sh_self/utils/helpers.dart';
import 'package:sh_self/utils/models/sh_module.dart';
import 'package:sh_self/utils/sh_eval_plugin.dart';

Future<void> processModules(td.Update update) async {
  telegramApp.addUpdate(update.runtimeType.toString());
  final event = getEventType(update);
  final textAndContentType = getMessageTextAndContentType(update);
  final chatTypeAndSenderId = await getEventChatTypeAndSender(update);
  final hasReply = isReplied(update);
  final matchedModules = ShModule.registeredModules.where((module) {
    final filter = module.filter;
    return filter.eventFilter.contains(event) &&
        (filter.mustReply && hasReply || !filter.mustReply) &&
        filter.regExFilter
            .any((regex) => RegExp(regex).hasMatch(textAndContentType.text)) &&
        filter.messageTypesFilter.contains(textAndContentType.type) &&
        (filter.senderFilter.isEmpty ||
            filter.senderFilter.contains(chatTypeAndSenderId.senderId) ||
            chatTypeAndSenderId.senderId == telegramApp.me?.id &&
                filter.senderFilter.contains(0)) &&
        filter.incomingChatTypeFilter.contains(chatTypeAndSenderId.chatType);
  }).toList();
  runMatchedModules(matchedModules, update);
  if (chatTypeAndSenderId.senderId == telegramApp.me?.id) {
    final dynamicModules = database.getModules();
    if (dynamicModules == null) return;
    for (final Map<String, String> m in dynamicModules) {
      final regEx = RegExp(m['regex']!);
      if (regEx.hasMatch(textAndContentType.text)) {
        _runDynamicModule(m['path']!, update.toJson());
      }
    }
  }
}

void runMatchedModules(List<ShModule> matchedModules, td.Update update) {
  for (final module in matchedModules) {
    module.function(update);
  }
}

void _runDynamicModule(String m, Map<String, dynamic> update) {
  final file = File(m);
  final bytecode = file.readAsBytesSync().buffer.asByteData();

  final runtime = Runtime(bytecode);
  runtime.addPlugin(ShSelfEvalPlugin());
  runtime.setup();
  runtime.executeLib(
    'package:sh_self/main.dart',
    'function',
    [
      $ShDatabase.wrap(database),
      $ShTelegramApp.wrap(telegramApp),
      $Map<String, dynamic>.wrap(update),
    ],
  );
}
