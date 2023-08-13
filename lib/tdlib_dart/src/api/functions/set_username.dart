import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Changes the editable username of the current user
/// Returns [Ok]
@immutable
class SetUsername extends TdFunction {
  const SetUsername({
    required this.username,
  });

  /// [username] The new value of the username. Use an empty string to remove
  /// the username. The username can't be completely removed if there is another
  /// active or disabled username
  final String username;

  static const String constructor = 'setUsername';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'username': username,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
