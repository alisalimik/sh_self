import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// A superscript rich text
@immutable
class RichTextSuperscript extends RichText {
  const RichTextSuperscript({
    required this.text,
  });

  /// [text] Text
  final RichText text;

  static const String constructor = 'richTextSuperscript';

  static RichTextSuperscript? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return RichTextSuperscript(
      text: RichText.fromJson(
        json['text'] as Map<String, dynamic>?,
      )!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
