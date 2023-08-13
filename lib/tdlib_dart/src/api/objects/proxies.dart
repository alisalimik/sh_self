import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Represents a list of proxy servers
@immutable
class Proxies extends TdObject {
  const Proxies({
    required this.proxies,
  });

  /// [proxies] List of proxy servers
  final List<Proxy> proxies;

  static const String constructor = 'proxies';

  static Proxies? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return Proxies(
      proxies: List<Proxy>.from(
        ((json['proxies'] as List<dynamic>?) ?? <dynamic>[])
            .map(
              (item) => Proxy.fromJson(
                item as Map<String, dynamic>?,
              ),
            )
            .toList(),
      ),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'proxies': proxies.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
