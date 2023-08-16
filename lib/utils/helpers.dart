// ignore_for_file: type_literal_in_constant_pattern

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

String getMessageTextFromJsonEval(Map<String, dynamic> update) {
  // ignore: avoid_dynamic_calls
  return update["message"]?['content']?['text']?['text'] as String;
}

int getMessageChatIdFromJsonEval(Map<String, dynamic> update) {
  // ignore: avoid_dynamic_calls
  return update["message"]?['chat_id'] as int;
}

int getMessageIdFromJsonEval(Map<String, dynamic> update) {
  // ignore: avoid_dynamic_calls
  return update["message"]?['id'] as int;
}

void editMessageAndAutoDeleteEval(int chatId, int messageId, String text) {
  editMessageEval(chatId, messageId, text).then((result) {
    if (result is td.Message) {
      autoDeleteMessage(chatId, [messageId]);
    }
  });
}

Future<void> editMessageAndAutoDelete(td.Message message, String text) async {
  final td.TdObject result = await editMessage(message, text);
  if (result is td.Message) {
    autoDeleteMessage(result.chatId, [message.id]);
  }
}

Future<td.TdObject> editMessageEval(
  int chatId,
  int messageId,
  String text,
) async {
  return telegramApp.client.send(
    td.EditMessageText(
      chatId: chatId,
      messageId: messageId,
      inputMessageContent: td.InputMessageText(
        text: formatMarkDown(text),
        disableWebPagePreview: true,
        clearDraft: true,
      ),
    ),
  );
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

bool isReplied(td.Update update) {
  if (update is td.UpdateNewMessage) {
    return update.message.replyTo != null;
  }
  return false;
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
      case td.MessageText:
        final c = content as td.MessageText;
        return ShMessageTextAndType(
          c.text.text,
          ShMessageType.text,
        );
      case td.MessagePhoto:
        final c = content as td.MessagePhoto;
        return ShMessageTextAndType(
          c.caption.text,
          ShMessageType.photo,
        );
      case td.MessageDocument:
        final c = content as td.MessageDocument;
        return ShMessageTextAndType(
          c.caption.text,
          ShMessageType.document,
        );
      case td.MessageVideo:
        final c = content as td.MessageVideo;
        return ShMessageTextAndType(
          c.caption.text,
          ShMessageType.video,
        );
      case td.MessageAudio:
        final c = content as td.MessageAudio;
        return ShMessageTextAndType(
          c.caption.text,
          ShMessageType.audio,
        );
      case td.MessageContact:
        final c = content as td.MessageContact;
        return ShMessageTextAndType(
          c.contact.firstName,
          ShMessageType.contact,
        );
      case td.MessagePoll:
        final c = content as td.MessagePoll;
        return ShMessageTextAndType(
          c.poll.question,
          ShMessageType.poll,
        );
      case td.MessageAnimation:
        final c = content as td.MessageAnimation;
        return ShMessageTextAndType(
          c.caption.text,
          ShMessageType.animation,
        );
      case td.MessageGame:
        final c = content as td.MessageGame;
        return ShMessageTextAndType(
          c.game.title,
          ShMessageType.game,
        );
      case td.MessageAnimatedEmoji:
        final c = content as td.MessageAnimatedEmoji;
        return ShMessageTextAndType(
          c.emoji,
          ShMessageType.animatedEmoji,
        );
      case td.MessageDice:
        final c = content as td.MessageDice;
        return ShMessageTextAndType(
          c.emoji,
          ShMessageType.dice,
        );
      case td.MessageLocation:
        return const ShMessageTextAndType("", ShMessageType.location);
      case td.MessageSticker:
        return const ShMessageTextAndType("", ShMessageType.sticker);
      case td.MessageCall:
        return const ShMessageTextAndType("", ShMessageType.call);
      case td.MessageStory:
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
        case td.ChatTypeSecret:
          return ShChatTypeInfo(
            ShChatType.secret,
            senderId != 0 ? senderId : chatId,
          );
        case td.ChatTypePrivate:
          return ShChatTypeInfo(
            ShChatType.private,
            senderId != 0 ? senderId : chatId,
          );
        case td.ChatTypeBasicGroup || td.ChatTypeSupergroup:
          return ShChatTypeInfo(
            ShChatType.group,
            senderId != 0 ? senderId : chatId,
          );
      }
    }
  }
  return ShChatTypeInfo(ShChatType.unknown, senderId);
}

num clamp(num value, num min, num max) {
  return value < min ? min : (value > max ? max : value);
}
