import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// A chat title was edited
@immutable
class PushMessageContentChatChangeTitle extends PushMessageContent {
  const PushMessageContentChatChangeTitle({
    required this.title,
  });

  /// [title] New chat title
  final String title;

  static const String constructor = 'pushMessageContentChatChangeTitle';

  static PushMessageContentChatChangeTitle? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PushMessageContentChatChangeTitle(
      title: json['title'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
