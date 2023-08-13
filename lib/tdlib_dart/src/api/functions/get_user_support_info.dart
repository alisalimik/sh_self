import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Returns support information for the given user; for Telegram support only
/// Returns [UserSupportInfo]
@immutable
class GetUserSupportInfo extends TdFunction {
  const GetUserSupportInfo({
    required this.userId,
  });

  /// [userId] User identifier
  final int userId;

  static const String constructor = 'getUserSupportInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
