import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Closes the TDLib instance. All databases will be flushed to disk and
/// properly closed. After the close completes, updateAuthorizationState with
/// authorizationStateClosed will be sent. Can be called before initialization
/// Returns [Ok]
@immutable
class Close extends TdFunction {
  const Close();

  static const String constructor = 'close';

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
