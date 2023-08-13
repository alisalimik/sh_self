import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Sets support information for the given user; for Telegram support only
/// Returns [UserSupportInfo]
@immutable
class SetUserSupportInfo extends TdFunction {
  const SetUserSupportInfo({
    required this.userId,
    required this.message,
  });

  /// [userId] User identifier
  final int userId;

  /// [message] New information message
  final FormattedText message;

  static const String constructor = 'setUserSupportInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'message': message.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
