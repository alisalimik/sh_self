import 'package:meta/meta.dart';

import 'package:sh_self/utils/models/sh_chat_type.dart';

@immutable
class ShChatTypeInfo {
  final ShChatType chatType;
  final int senderId;

  const ShChatTypeInfo(this.chatType, this.senderId);
}
