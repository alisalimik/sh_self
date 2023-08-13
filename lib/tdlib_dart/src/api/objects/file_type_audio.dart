import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The file is an audio file
@immutable
class FileTypeAudio extends FileType {
  const FileTypeAudio();

  static const String constructor = 'fileTypeAudio';

  static FileTypeAudio? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const FileTypeAudio();
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
