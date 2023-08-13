import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The media is unsupported
@immutable
class MessageExtendedMediaUnsupported extends MessageExtendedMedia {
  const MessageExtendedMediaUnsupported({
    required this.caption,
  });

  /// [caption] Media caption
  final FormattedText caption;

  static const String constructor = 'messageExtendedMediaUnsupported';

  static MessageExtendedMediaUnsupported? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return MessageExtendedMediaUnsupported(
      caption: FormattedText.fromJson(
        json['caption'] as Map<String, dynamic>?,
      )!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'caption': caption.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
