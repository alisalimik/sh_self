import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Contains a list of chat invite link counts
@immutable
class ChatInviteLinkCounts extends TdObject {
  const ChatInviteLinkCounts({
    required this.inviteLinkCounts,
  });

  /// [inviteLinkCounts] List of invite link counts
  final List<ChatInviteLinkCount> inviteLinkCounts;

  static const String constructor = 'chatInviteLinkCounts';

  static ChatInviteLinkCounts? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatInviteLinkCounts(
      inviteLinkCounts: List<ChatInviteLinkCount>.from(
        ((json['invite_link_counts'] as List<dynamic>?) ?? <dynamic>[])
            .map(
              (item) => ChatInviteLinkCount.fromJson(
                item as Map<String, dynamic>?,
              ),
            )
            .toList(),
      ),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'invite_link_counts':
            inviteLinkCounts.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
