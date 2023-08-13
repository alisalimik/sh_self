import 'package:sh_self/sh_self.dart';
import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/helpers.dart';
import 'package:sh_self/utils/models/sh_filter.dart';
import 'package:sh_self/utils/models/sh_message_type.dart';
import 'package:sh_self/utils/models/sh_module.dart';

void mute() => ShModule.onNewMessage(
      _function,
      ShFilter.me() + ShFilter.regex(r'^[Mm] (.*)$'),
    );
Future<void> _function(update) async {
  if (update is! td.UpdateNewMessage) return;
  final td.MessageText incomingMessage =
      update.message.content as td.MessageText;
  final String mutedText = incomingMessage.text.text.split(" ")[1];
  final List<ShMessageType> filteredCollection = ShMessageType.values
      .where((element) => element.name == mutedText)
      .toList();
  if (filteredCollection.isEmpty) return;
  final ShMessageType muted = filteredCollection.first;

  final td.MessageReplyToMessage? replyTo =
      update.message.replyTo as td.MessageReplyToMessage?;
  final td.Message repliedMessage = await telegramApp.client.send(
    td.GetMessage(
      chatId: replyTo?.chatId ?? 0,
      messageId: replyTo?.messageId ?? 0,
    ),
  );
  final td.User repliedUser = await telegramApp.client.send(
    td.GetUser(
      userId: (repliedMessage.senderId as td.MessageSenderUser).userId,
    ),
  );
  final String firstName = repliedUser.firstName;

  String responseText = "";
  if (repliedUser.id == telegramApp.me?.id) {
    responseText =
        "Mute `$mutedText` __Error__ for **$firstName**\n You cannot mute yourself.\nBy ShSelf!";
  } else if (database.isMutedUser(muted, repliedUser.id)) {
    database.unmuteUser(muted, repliedUser.id);
    responseText = "`$mutedText` __UNmuted__ for **$firstName**\nBy ShSelf!";
  } else {
    database.muteUser(muted, repliedUser.id);
    responseText = "`$mutedText` __Muted__ for **$firstName**\nBy ShSelf!";
  }
  editMessageAndAutoDelete(update.message, responseText);
}
