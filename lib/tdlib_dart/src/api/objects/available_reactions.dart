import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Represents a list of reactions that can be added to a message
@immutable
class AvailableReactions extends TdObject {
  const AvailableReactions({
    required this.topReactions,
    required this.recentReactions,
    required this.popularReactions,
    required this.allowCustomEmoji,
  });

  /// [topReactions] List of reactions to be shown at the top
  final List<AvailableReaction> topReactions;

  /// [recentReactions] List of recently used reactions
  final List<AvailableReaction> recentReactions;

  /// [popularReactions] List of popular reactions
  final List<AvailableReaction> popularReactions;

  /// [allowCustomEmoji] True, if custom emoji reactions could be added by
  /// Telegram Premium subscribers
  final bool allowCustomEmoji;

  static const String constructor = 'availableReactions';

  static AvailableReactions? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return AvailableReactions(
      topReactions: List<AvailableReaction>.from(
        ((json['top_reactions'] as List<dynamic>?) ?? <dynamic>[])
            .map(
              (item) => AvailableReaction.fromJson(
                item as Map<String, dynamic>?,
              ),
            )
            .toList(),
      ),
      recentReactions: List<AvailableReaction>.from(
        ((json['recent_reactions'] as List<dynamic>?) ?? <dynamic>[])
            .map(
              (item) => AvailableReaction.fromJson(
                item as Map<String, dynamic>?,
              ),
            )
            .toList(),
      ),
      popularReactions: List<AvailableReaction>.from(
        ((json['popular_reactions'] as List<dynamic>?) ?? <dynamic>[])
            .map(
              (item) => AvailableReaction.fromJson(
                item as Map<String, dynamic>?,
              ),
            )
            .toList(),
      ),
      allowCustomEmoji: json['allow_custom_emoji'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'top_reactions': topReactions.map((item) => item.toJson()).toList(),
        'recent_reactions':
            recentReactions.map((item) => item.toJson()).toList(),
        'popular_reactions':
            popularReactions.map((item) => item.toJson()).toList(),
        'allow_custom_emoji': allowCustomEmoji,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
