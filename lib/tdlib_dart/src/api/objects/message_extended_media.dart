import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Describes a media, which is attached to an invoice
@immutable
abstract class MessageExtendedMedia extends TdObject {
  const MessageExtendedMedia();

  static const String constructor = 'messageExtendedMedia';

  /// Inherited by:
  /// [MessageExtendedMediaPhoto]
  /// [MessageExtendedMediaPreview]
  /// [MessageExtendedMediaUnsupported]
  /// [MessageExtendedMediaVideo]
  static MessageExtendedMedia? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageExtendedMediaPhoto.constructor:
        return MessageExtendedMediaPhoto.fromJson(json);
      case MessageExtendedMediaPreview.constructor:
        return MessageExtendedMediaPreview.fromJson(json);
      case MessageExtendedMediaUnsupported.constructor:
        return MessageExtendedMediaUnsupported.fromJson(json);
      case MessageExtendedMediaVideo.constructor:
        return MessageExtendedMediaVideo.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
