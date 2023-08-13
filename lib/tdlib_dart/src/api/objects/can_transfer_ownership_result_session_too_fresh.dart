import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The session was created recently, user needs to wait
@immutable
class CanTransferOwnershipResultSessionTooFresh
    extends CanTransferOwnershipResult {
  const CanTransferOwnershipResultSessionTooFresh({
    required this.retryAfter,
  });

  /// [retryAfter] Time left before the session can be used to transfer
  /// ownership of a chat, in seconds
  final int retryAfter;

  static const String constructor = 'canTransferOwnershipResultSessionTooFresh';

  static CanTransferOwnershipResultSessionTooFresh? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return CanTransferOwnershipResultSessionTooFresh(
      retryAfter: json['retry_after'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'retry_after': retryAfter,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
