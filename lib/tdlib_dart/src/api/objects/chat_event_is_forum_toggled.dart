import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The is_forum setting of a channel was toggled
@immutable
class ChatEventIsForumToggled extends ChatEventAction {
  const ChatEventIsForumToggled({
    required this.isForum,
  });

  /// [isForum] New value of is_forum
  final bool isForum;

  static const String constructor = 'chatEventIsForumToggled';

  static ChatEventIsForumToggled? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatEventIsForumToggled(
      isForum: json['is_forum'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_forum': isForum,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
