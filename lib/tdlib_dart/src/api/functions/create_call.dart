import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Creates a new call
/// Returns [CallId]
@immutable
class CreateCall extends TdFunction {
  const CreateCall({
    required this.userId,
    required this.protocol,
    required this.isVideo,
  });

  /// [userId] Identifier of the user to be called
  final int userId;

  /// [protocol] The call protocols supported by the application
  final CallProtocol protocol;

  /// [isVideo] Pass true to create a video call
  final bool isVideo;

  static const String constructor = 'createCall';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'protocol': protocol.toJson(),
        'is_video': isVideo,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
