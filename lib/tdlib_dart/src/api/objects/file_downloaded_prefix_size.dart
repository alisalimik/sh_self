import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Contains size of downloaded prefix of a file
@immutable
class FileDownloadedPrefixSize extends TdObject {
  const FileDownloadedPrefixSize({
    required this.size,
  });

  /// [size] The prefix size, in bytes
  final int size;

  static const String constructor = 'fileDownloadedPrefixSize';

  static FileDownloadedPrefixSize? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return FileDownloadedPrefixSize(
      size: json['size'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'size': size,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
