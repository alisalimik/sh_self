import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Text that must be formatted as if inside pre, and code HTML tags
@immutable
class TextEntityTypePreCode extends TextEntityType {
  const TextEntityTypePreCode({
    required this.language,
  });

  /// [language] Programming language of the code; as defined by the sender
  final String language;

  static const String constructor = 'textEntityTypePreCode';

  static TextEntityTypePreCode? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return TextEntityTypePreCode(
      language: json['language'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'language': language,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
