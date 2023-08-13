import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Stops the preliminary uploading of a file. Supported only for files
/// uploaded by using preliminaryUploadFile. For other files the behavior is
/// undefined
/// Returns [Ok]
@immutable
class CancelPreliminaryUploadFile extends TdFunction {
  const CancelPreliminaryUploadFile({
    required this.fileId,
  });

  /// [fileId] Identifier of the file to stop uploading
  final int fileId;

  static const String constructor = 'cancelPreliminaryUploadFile';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_id': fileId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
