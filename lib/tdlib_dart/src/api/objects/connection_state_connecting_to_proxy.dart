import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Currently establishing a connection with a proxy server
@immutable
class ConnectionStateConnectingToProxy extends ConnectionState {
  const ConnectionStateConnectingToProxy();

  static const String constructor = 'connectionStateConnectingToProxy';

  static ConnectionStateConnectingToProxy? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const ConnectionStateConnectingToProxy();
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
