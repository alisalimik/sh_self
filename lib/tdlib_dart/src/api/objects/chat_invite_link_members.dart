import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Contains a list of chat members joined a chat via an invite link
@immutable
class ChatInviteLinkMembers extends TdObject {
  const ChatInviteLinkMembers({
    required this.totalCount,
    required this.members,
  });

  /// [totalCount] Approximate total number of chat members found
  final int totalCount;

  /// [members] List of chat members, joined a chat via an invite link
  final List<ChatInviteLinkMember> members;

  static const String constructor = 'chatInviteLinkMembers';

  static ChatInviteLinkMembers? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatInviteLinkMembers(
      totalCount: json['total_count'] as int,
      members: List<ChatInviteLinkMember>.from(
        ((json['members'] as List<dynamic>?) ?? <dynamic>[])
            .map(
              (item) => ChatInviteLinkMember.fromJson(
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
        'total_count': totalCount,
        'members': members.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
