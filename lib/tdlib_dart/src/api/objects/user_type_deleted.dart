import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// A deleted user or deleted bot. No information on the user besides the user
/// identifier is available. It is not possible to perform any active actions
/// on this type of user
@immutable
class UserTypeDeleted extends UserType {
  const UserTypeDeleted();

  static const String constructor = 'userTypeDeleted';

  static UserTypeDeleted? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const UserTypeDeleted();
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
