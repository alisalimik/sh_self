import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// A personal document, containing some information about a user
@immutable
class PersonalDocument extends TdObject {
  const PersonalDocument({
    required this.files,
    required this.translation,
  });

  /// [files] List of files containing the pages of the document
  final List<DatedFile> files;

  /// [translation] List of files containing a certified English translation of
  /// the document
  final List<DatedFile> translation;

  static const String constructor = 'personalDocument';

  static PersonalDocument? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PersonalDocument(
      files: List<DatedFile>.from(
        ((json['files'] as List<dynamic>?) ?? <dynamic>[])
            .map(
              (item) => DatedFile.fromJson(
                item as Map<String, dynamic>?,
              ),
            )
            .toList(),
      ),
      translation: List<DatedFile>.from(
        ((json['translation'] as List<dynamic>?) ?? <dynamic>[])
            .map(
              (item) => DatedFile.fromJson(
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
        'files': files.map((item) => item.toJson()).toList(),
        'translation': translation.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
