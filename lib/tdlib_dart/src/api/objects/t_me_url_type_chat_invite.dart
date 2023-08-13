import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// A chat invite link
@immutable
class TMeUrlTypeChatInvite extends TMeUrlType {
  const TMeUrlTypeChatInvite({
    required this.info,
  });

  /// [info] Information about the chat invite link
  final ChatInviteLinkInfo info;

  static const String constructor = 'tMeUrlTypeChatInvite';

  static TMeUrlTypeChatInvite? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return TMeUrlTypeChatInvite(
      info: ChatInviteLinkInfo.fromJson(
        json['info'] as Map<String, dynamic>?,
      )!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'info': info.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
