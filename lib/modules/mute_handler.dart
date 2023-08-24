import 'package:sh_self/sh_self.dart';
import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/helpers.dart';
import 'package:sh_self/utils/models/sh_filter.dart';
import 'package:sh_self/utils/models/sh_message_type.dart';
import 'package:sh_self/utils/models/sh_module.dart';

void muteHandler() => ShModule.onNewMessage(
      _function,
      ShFilter.allMessageTypes() + ShFilter.regex(r'^[Tt]oday$'),
      1,
    );
Future<void> _function(update) async {
  if (update is! td.UpdateNewMessage) return;
  var belongTo = 0;
  if (update.message.senderId is td.MessageSenderUser) {
    belongTo = (update.message.senderId as td.MessageSenderUser).userId;
  } else if (update.message.senderId is td.MessageSenderChat) {
    belongTo = (update.message.senderId as td.MessageSenderChat).chatId;
  }
  final ShMessageType messageType = getMessageTextAndContentType(update).type;
  if (database.isMutedUser(messageType, belongTo)) {
    telegramApp.addLog("running mute handler");
    await telegramApp.client.send(
      td.DeleteMessages(
        chatId: update.message.chatId,
        messageIds: [update.message.id],
        revoke: true,
      ),
    );
  }
}
