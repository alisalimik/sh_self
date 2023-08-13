import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Describes reset state of a email address
@immutable
abstract class EmailAddressResetState extends TdObject {
  const EmailAddressResetState();

  static const String constructor = 'emailAddressResetState';

  /// Inherited by:
  /// [EmailAddressResetStateAvailable]
  /// [EmailAddressResetStatePending]
  static EmailAddressResetState? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case EmailAddressResetStateAvailable.constructor:
        return EmailAddressResetStateAvailable.fromJson(json);
      case EmailAddressResetStatePending.constructor:
        return EmailAddressResetStatePending.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
