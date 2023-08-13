import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Contains information about features, available to Premium users
@immutable
class PremiumFeatures extends TdObject {
  const PremiumFeatures({
    required this.features,
    required this.limits,
    this.paymentLink,
  });

  /// [features] The list of available features
  final List<PremiumFeature> features;

  /// [limits] The list of limits, increased for Premium users
  final List<PremiumLimit> limits;

  /// [paymentLink] An internal link to be opened to pay for Telegram Premium if
  /// store payment isn't possible; may be null if direct payment isn't
  /// available
  final InternalLinkType? paymentLink;

  static const String constructor = 'premiumFeatures';

  static PremiumFeatures? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PremiumFeatures(
      features: List<PremiumFeature>.from(
        ((json['features'] as List<dynamic>?) ?? <dynamic>[])
            .map(
              (item) => PremiumFeature.fromJson(
                item as Map<String, dynamic>?,
              ),
            )
            .toList(),
      ),
      limits: List<PremiumLimit>.from(
        ((json['limits'] as List<dynamic>?) ?? <dynamic>[])
            .map(
              (item) => PremiumLimit.fromJson(
                item as Map<String, dynamic>?,
              ),
            )
            .toList(),
      ),
      paymentLink: InternalLinkType.fromJson(
        json['payment_link'] as Map<String, dynamic>?,
      ),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'features': features.map((item) => item.toJson()).toList(),
        'limits': limits.map((item) => item.toJson()).toList(),
        'payment_link': paymentLink?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
