import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The maximum number of active stories
@immutable
class PremiumLimitTypeActiveStoryCount extends PremiumLimitType {
  const PremiumLimitTypeActiveStoryCount();

  static const String constructor = 'premiumLimitTypeActiveStoryCount';

  static PremiumLimitTypeActiveStoryCount? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeActiveStoryCount();
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
