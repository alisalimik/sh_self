import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Improved download speed
@immutable
class PremiumFeatureImprovedDownloadSpeed extends PremiumFeature {
  const PremiumFeatureImprovedDownloadSpeed();

  static const String constructor = 'premiumFeatureImprovedDownloadSpeed';

  static PremiumFeatureImprovedDownloadSpeed? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureImprovedDownloadSpeed();
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
