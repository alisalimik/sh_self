import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// A concatenation of rich texts
@immutable
class RichTexts extends RichText {
  const RichTexts({
    required this.texts,
  });

  /// [texts] Texts
  final List<RichText> texts;

  static const String constructor = 'richTexts';

  static RichTexts? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return RichTexts(
      texts: List<RichText>.from(
        ((json['texts'] as List<dynamic>?) ?? <dynamic>[])
            .map(
              (item) => RichText.fromJson(
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
        'texts': texts.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
