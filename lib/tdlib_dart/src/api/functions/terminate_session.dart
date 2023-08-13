import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Terminates a session of the current user
/// Returns [Ok]
@immutable
class TerminateSession extends TdFunction {
  const TerminateSession({
    required this.sessionId,
  });

  /// [sessionId] Session identifier
  final int sessionId;

  static const String constructor = 'terminateSession';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'session_id': sessionId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
