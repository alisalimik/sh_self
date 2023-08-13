import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Returns the owner and administrators
@immutable
class SupergroupMembersFilterAdministrators extends SupergroupMembersFilter {
  const SupergroupMembersFilterAdministrators();

  static const String constructor = 'supergroupMembersFilterAdministrators';

  static SupergroupMembersFilterAdministrators? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const SupergroupMembersFilterAdministrators();
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
