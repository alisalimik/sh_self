import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Contains information about countries
@immutable
class Countries extends TdObject {
  const Countries({
    required this.countries,
  });

  /// [countries] The list of countries
  final List<CountryInfo> countries;

  static const String constructor = 'countries';

  static Countries? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return Countries(
      countries: List<CountryInfo>.from(
        ((json['countries'] as List<dynamic>?) ?? <dynamic>[])
            .map(
              (item) => CountryInfo.fromJson(
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
        'countries': countries.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
