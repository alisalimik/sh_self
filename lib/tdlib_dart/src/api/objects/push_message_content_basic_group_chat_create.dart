import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// A newly created basic group
@immutable
class PushMessageContentBasicGroupChatCreate extends PushMessageContent {
  const PushMessageContentBasicGroupChatCreate();

  static const String constructor = 'pushMessageContentBasicGroupChatCreate';

  static PushMessageContentBasicGroupChatCreate? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentBasicGroupChatCreate();
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
