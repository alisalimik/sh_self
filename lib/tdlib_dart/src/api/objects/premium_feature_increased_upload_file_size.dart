import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Increased maximum upload file size
@immutable
class PremiumFeatureIncreasedUploadFileSize extends PremiumFeature {
  const PremiumFeatureIncreasedUploadFileSize();

  static const String constructor = 'premiumFeatureIncreasedUploadFileSize';

  static PremiumFeatureIncreasedUploadFileSize? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureIncreasedUploadFileSize();
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
