import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Contains a list of language pack strings
@immutable
class LanguagePackStrings extends TdObject {
  const LanguagePackStrings({
    required this.strings,
  });

  /// [strings] A list of language pack strings
  final List<LanguagePackString> strings;

  static const String constructor = 'languagePackStrings';

  static LanguagePackStrings? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return LanguagePackStrings(
      strings: List<LanguagePackString>.from(
        ((json['strings'] as List<dynamic>?) ?? <dynamic>[])
            .map(
              (item) => LanguagePackString.fromJson(
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
        'strings': strings.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
