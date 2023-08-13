import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Describes a source from which the Premium features screen is opened
@immutable
abstract class PremiumSource extends TdObject {
  const PremiumSource();

  static const String constructor = 'premiumSource';

  /// Inherited by:
  /// [PremiumSourceFeature]
  /// [PremiumSourceLimitExceeded]
  /// [PremiumSourceLink]
  /// [PremiumSourceSettings]
  static PremiumSource? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PremiumSourceFeature.constructor:
        return PremiumSourceFeature.fromJson(json);
      case PremiumSourceLimitExceeded.constructor:
        return PremiumSourceLimitExceeded.fromJson(json);
      case PremiumSourceLink.constructor:
        return PremiumSourceLink.fromJson(json);
      case PremiumSourceSettings.constructor:
        return PremiumSourceSettings.fromJson(json);
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
