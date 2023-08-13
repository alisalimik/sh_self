import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Describes a purpose of an in-store payment
@immutable
abstract class StorePaymentPurpose extends TdObject {
  const StorePaymentPurpose();

  static const String constructor = 'storePaymentPurpose';

  /// Inherited by:
  /// [StorePaymentPurposeGiftedPremium]
  /// [StorePaymentPurposePremiumSubscription]
  static StorePaymentPurpose? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StorePaymentPurposeGiftedPremium.constructor:
        return StorePaymentPurposeGiftedPremium.fromJson(json);
      case StorePaymentPurposePremiumSubscription.constructor:
        return StorePaymentPurposePremiumSubscription.fromJson(json);
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
