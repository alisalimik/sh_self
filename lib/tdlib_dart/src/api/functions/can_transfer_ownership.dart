import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Checks whether the current session can be used to transfer a chat
/// ownership to another user
/// Returns [CanTransferOwnershipResult]
@immutable
class CanTransferOwnership extends TdFunction {
  const CanTransferOwnership();

  static const String constructor = 'canTransferOwnership';

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
