import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Returns up to 20 recently used inline bots in the order of their last
/// usage
/// Returns [Users]
@immutable
class GetRecentInlineBots extends TdFunction {
  const GetRecentInlineBots();

  static const String constructor = 'getRecentInlineBots';

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
