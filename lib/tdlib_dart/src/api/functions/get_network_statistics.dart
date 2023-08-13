import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Returns network data usage statistics. Can be called before authorization
/// Returns [NetworkStatistics]
@immutable
class GetNetworkStatistics extends TdFunction {
  const GetNetworkStatistics({
    required this.onlyCurrent,
  });

  /// [onlyCurrent] Pass true to get statistics only for the current library
  /// launch
  final bool onlyCurrent;

  static const String constructor = 'getNetworkStatistics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'only_current': onlyCurrent,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
