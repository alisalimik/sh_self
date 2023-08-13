import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The maximum length of sent media caption
@immutable
class PremiumLimitTypeCaptionLength extends PremiumLimitType {
  const PremiumLimitTypeCaptionLength();

  static const String constructor = 'premiumLimitTypeCaptionLength';

  static PremiumLimitTypeCaptionLength? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeCaptionLength();
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
