import 'package:sh_self/sh_self.dart';
import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/models/sh_chat_type.dart';
import 'package:sh_self/utils/models/sh_chat_type_info.dart';
import 'package:sh_self/utils/models/sh_event.dart';
import 'package:sh_self/utils/models/sh_message_type.dart';
import 'package:sh_self/utils/models/sh_text_and_type.dart';

td.FormattedText formatMarkDown(String text) {
  td.FormattedText result;
  final td.TdObject formattedFrameResponse = telegramApp.client.execute(
    td.ParseTextEntities(
      parseMode: const td.TextParseModeMarkdown(version: 2),
      text: text
          .replaceAll('.', r'\.')
          .replaceAll('!', r'\!')
          .replaceAll("-", r"\-")
          .replaceAll("=", r"\="),
    ),
  );

  if (formattedFrameResponse is td.FormattedText) {
    result = formattedFrameResponse;
  } else {
    result = td.FormattedText(text: text, entities: const []);
  }
  // if (formattedFrameResponse is td.TdError) {
  //   print(
  //       "Error: ${formattedFrameResponse.code} ${formattedFrameResponse.message}",);
  // }
  return result;
}

Future<void> editMessageAndAutoDelete(td.Message message, String text) async {
  final td.TdObject result = await editMessage(message, text);
  if (result is td.Message) {
    autoDeleteMessage(result.chatId, [message.id]);
  }
}

Future<td.TdObject> editMessage(td.Message message, String text) async {
  return telegramApp.client.send(
    td.EditMessageText(
      chatId: message.chatId,
      messageId: message.id,
      inputMessageContent: td.InputMessageText(
        text: formatMarkDown(text),
        disableWebPagePreview: true,
        clearDraft: true,
      ),
    ),
  );
}

Future<bool> autoDeleteMessage(int chatId, List<int> messageIds) async {
  if (database.readFromDb("autodel") == "on") {
    await Future.delayed(
      Duration(
        seconds: int.tryParse(
              database.readFromDb(
                "autodeltime",
              ),
            ) ??
            1,
      ),
    );
    return await telegramApp.client.send(
      td.DeleteMessages(
        chatId: chatId,
        messageIds: messageIds,
        revoke: true,
      ),
    ) is! td.TdError;
  }
  return false;
}

ShEvent getEventType(td.Update update) {
  if (update is td.UpdateNewMessage) {
    return ShEvent.onNewMessage;
  } else if (update is td.UpdateMessageContent) {
    return ShEvent.onUpdateMessage;
  } else if (update is td.UpdateDeleteMessages) {
    return ShEvent.onDeleteMessages;
  } else if (update is td.UpdateMessageEdited) {
    return ShEvent.onEditMessage;
  } else if (update is td.UpdateNewCallbackQuery) {
    return ShEvent.onCallbackQuery;
  } else if (update is td.UpdateChatUnreadMentionCount) {
    return ShEvent.onMentioned;
  } else if (update is td.UpdateAuthorizationState) {
    return ShEvent.onUpdateAuthorizationState;
  } else {
    return ShEvent.onRawUpdate;
  }
}

ShMessageTextAndType getMessageTextAndContentType(td.Update update) {
  td.MessageContent? content;
  if (update is td.UpdateNewMessage) {
    content = update.message.content;
  } else if (update is td.UpdateMessageContent) {
    content = update.newContent;
  }

  if (content != null) {
    switch (content.runtimeType) {
      case td.MessageText _:
        return ShMessageTextAndType(
          (content as td.MessageText).text.text,
          ShMessageType.text,
        );
      case td.MessagePhoto _:
        return ShMessageTextAndType(
          (content as td.MessagePhoto).caption.text,
          ShMessageType.photo,
        );
      case td.MessageDocument _:
        return ShMessageTextAndType(
          (content as td.MessageDocument).caption.text,
          ShMessageType.document,
        );
      case td.MessageVideo _:
        return ShMessageTextAndType(
          (content as td.MessageVideo).caption.text,
          ShMessageType.video,
        );
      case td.MessageAudio _:
        return ShMessageTextAndType(
          (content as td.MessageAudio).caption.text,
          ShMessageType.audio,
        );
      case td.MessageContact _:
        return ShMessageTextAndType(
          (content as td.MessageContact).contact.firstName,
          ShMessageType.contact,
        );
      case td.MessagePoll _:
        return ShMessageTextAndType(
          (content as td.MessagePoll).poll.question,
          ShMessageType.poll,
        );
      case td.MessageAnimation _:
        return ShMessageTextAndType(
          (content as td.MessageAnimation).caption.text,
          ShMessageType.animation,
        );
      case td.MessageGame _:
        return ShMessageTextAndType(
          (content as td.MessageGame).game.title,
          ShMessageType.game,
        );
      case td.MessageAnimatedEmoji _:
        return ShMessageTextAndType(
          (content as td.MessageAnimatedEmoji).emoji,
          ShMessageType.animatedEmoji,
        );
      case td.MessageDice _:
        return ShMessageTextAndType(
          (content as td.MessageDice).emoji,
          ShMessageType.dice,
        );
      case td.MessageLocation _:
        return const ShMessageTextAndType("", ShMessageType.location);
      case td.MessageSticker _:
        return const ShMessageTextAndType("", ShMessageType.sticker);
      case td.MessageCall _:
        return const ShMessageTextAndType("", ShMessageType.call);
      case td.MessageStory _:
        return const ShMessageTextAndType("", ShMessageType.story);
      default:
        return const ShMessageTextAndType("", ShMessageType.unsupported);
    }
  }

  return const ShMessageTextAndType("", ShMessageType.unsupported);
}

Future<ShChatTypeInfo> getEventChatTypeAndSender(td.Update update) async {
  int chatId = 0;
  int senderId = 0;
  if (update is td.UpdateNewMessage) {
    final senderId2 = update.message.senderId;
    if (senderId2 is td.MessageSenderUser) {
      senderId = senderId2.userId;
    } else if (senderId2 is td.MessageSenderChat) {
      senderId = chatId;
    }
    chatId = update.message.chatId;
  } else if (update is td.UpdateMessageEdited ||
      update is td.UpdateMessageContent ||
      update is td.UpdateDeleteMessages) {
    chatId = update.toJson()["chat_id"] as int;
  }

  if (chatId != 0) {
    final chat = await telegramApp.client.send(td.GetChat(chatId: chatId));
    if (chat is td.Chat) {
      switch (chat.type.runtimeType) {
        case td.ChatTypeSecret _:
          return ShChatTypeInfo(
            ShChatType.secret,
            senderId != 0 ? senderId : chatId,
          );
        case td.ChatTypePrivate _:
          return ShChatTypeInfo(
            ShChatType.private,
            senderId != 0 ? senderId : chatId,
          );
        case td.ChatTypeBasicGroup _ || td.ChatTypeSupergroup _:
          return ShChatTypeInfo(
            ShChatType.group,
            senderId != 0 ? senderId : chatId,
          );
      }
    }
  }
  return ShChatTypeInfo(ShChatType.unknown, senderId);
}
