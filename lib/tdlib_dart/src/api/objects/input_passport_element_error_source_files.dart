import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The list of attached files contains an error. The error is considered
/// resolved when the file list changes
@immutable
class InputPassportElementErrorSourceFiles
    extends InputPassportElementErrorSource {
  const InputPassportElementErrorSourceFiles({
    required this.fileHashes,
  });

  /// [fileHashes] Current hashes of all attached files
  final List<String> fileHashes;

  static const String constructor = 'inputPassportElementErrorSourceFiles';

  static InputPassportElementErrorSourceFiles? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceFiles(
      fileHashes: List<String>.from(
        ((json['file_hashes'] as List<dynamic>?) ?? <dynamic>[])
            .map((item) => item)
            .toList(),
      ),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_hashes': fileHashes.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
