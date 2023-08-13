import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// A new recurring payment was made by the current user
@immutable
class PushMessageContentRecurringPayment extends PushMessageContent {
  const PushMessageContentRecurringPayment({
    required this.amount,
  });

  /// [amount] The paid amount
  final String amount;

  static const String constructor = 'pushMessageContentRecurringPayment';

  static PushMessageContentRecurringPayment? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PushMessageContentRecurringPayment(
      amount: json['amount'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'amount': amount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
