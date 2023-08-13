import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The maximum number of joined supergroups and channels
@immutable
class PremiumLimitTypeSupergroupCount extends PremiumLimitType {
  const PremiumLimitTypeSupergroupCount();

  static const String constructor = 'premiumLimitTypeSupergroupCount';

  static PremiumLimitTypeSupergroupCount? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeSupergroupCount();
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
