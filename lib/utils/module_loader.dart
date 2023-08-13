import 'package:sh_self/sh_self.dart';
import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/helpers.dart';
import 'package:sh_self/utils/models/sh_module.dart';

Future<void> processModules(td.Update update) async {
  final event = getEventType(update);
  final textAndContentType = getMessageTextAndContentType(update);
  final chatTypeAndSenderId = await getEventChatTypeAndSender(update);
  final matchedModules = ShModule.registeredModules.where((module) {
    final filter = module.filter;
    return filter.eventFilter.contains(event) &&
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
}

void runMatchedModules(List<ShModule> matchedModules, td.Update update) {
  for (final module in matchedModules) {
    module.function(update);
  }
}
