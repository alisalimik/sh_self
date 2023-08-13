import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// A forum topic was closed or reopened
@immutable
class ChatEventForumTopicToggleIsClosed extends ChatEventAction {
  const ChatEventForumTopicToggleIsClosed({
    required this.topicInfo,
  });

  /// [topicInfo] New information about the topic
  final ForumTopicInfo topicInfo;

  static const String constructor = 'chatEventForumTopicToggleIsClosed';

  static ChatEventForumTopicToggleIsClosed? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatEventForumTopicToggleIsClosed(
      topicInfo: ForumTopicInfo.fromJson(
        json['topic_info'] as Map<String, dynamic>?,
      )!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'topic_info': topicInfo.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
