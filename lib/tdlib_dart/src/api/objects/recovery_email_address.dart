import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Contains information about the current recovery email address
@immutable
class RecoveryEmailAddress extends TdObject {
  const RecoveryEmailAddress({
    required this.recoveryEmailAddress,
  });

  /// [recoveryEmailAddress] Recovery email address
  final String recoveryEmailAddress;

  static const String constructor = 'recoveryEmailAddress';

  static RecoveryEmailAddress? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return RecoveryEmailAddress(
      recoveryEmailAddress: json['recovery_email_address'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'recovery_email_address': recoveryEmailAddress,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
