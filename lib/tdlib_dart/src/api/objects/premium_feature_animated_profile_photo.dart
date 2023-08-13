import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Profile photo animation on message and chat screens
@immutable
class PremiumFeatureAnimatedProfilePhoto extends PremiumFeature {
  const PremiumFeatureAnimatedProfilePhoto();

  static const String constructor = 'premiumFeatureAnimatedProfilePhoto';

  static PremiumFeatureAnimatedProfilePhoto? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureAnimatedProfilePhoto();
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
