import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// A new member was accepted to the chat by an administrator
@immutable
class PushMessageContentChatJoinByRequest extends PushMessageContent {
  const PushMessageContentChatJoinByRequest();

  static const String constructor = 'pushMessageContentChatJoinByRequest';

  static PushMessageContentChatJoinByRequest? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentChatJoinByRequest();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
