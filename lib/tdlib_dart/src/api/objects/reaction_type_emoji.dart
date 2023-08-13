import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// A reaction with an emoji
@immutable
class ReactionTypeEmoji extends ReactionType {
  const ReactionTypeEmoji({
    required this.emoji,
  });

  /// [emoji] Text representation of the reaction
  final String emoji;

  static const String constructor = 'reactionTypeEmoji';

  static ReactionTypeEmoji? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ReactionTypeEmoji(
      emoji: json['emoji'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'emoji': emoji,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
