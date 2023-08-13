import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// An audio file
@immutable
class PageBlockAudio extends PageBlock {
  const PageBlockAudio({
    this.audio,
    required this.caption,
  });

  /// [audio] Audio file; may be null
  final Audio? audio;

  /// [caption] Audio file caption
  final PageBlockCaption caption;

  static const String constructor = 'pageBlockAudio';

  static PageBlockAudio? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PageBlockAudio(
      audio: Audio.fromJson(
        json['audio'] as Map<String, dynamic>?,
      ),
      caption: PageBlockCaption.fromJson(
        json['caption'] as Map<String, dynamic>?,
      )!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'audio': audio?.toJson(),
        'caption': caption.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
