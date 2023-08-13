import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Allowed to translate chat messages real-time
@immutable
class PremiumFeatureRealTimeChatTranslation extends PremiumFeature {
  const PremiumFeatureRealTimeChatTranslation();

  static const String constructor = 'premiumFeatureRealTimeChatTranslation';

  static PremiumFeatureRealTimeChatTranslation? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureRealTimeChatTranslation();
  }

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
