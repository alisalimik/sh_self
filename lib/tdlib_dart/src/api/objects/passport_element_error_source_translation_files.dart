import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The translation of the document contains an error. The error will be
/// considered resolved when the list of translation files changes
@immutable
class PassportElementErrorSourceTranslationFiles
    extends PassportElementErrorSource {
  const PassportElementErrorSourceTranslationFiles();

  static const String constructor =
      'passportElementErrorSourceTranslationFiles';

  static PassportElementErrorSourceTranslationFiles? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PassportElementErrorSourceTranslationFiles();
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
