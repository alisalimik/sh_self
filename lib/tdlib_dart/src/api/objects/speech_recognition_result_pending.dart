import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The speech recognition is ongoing
@immutable
class SpeechRecognitionResultPending extends SpeechRecognitionResult {
  const SpeechRecognitionResultPending({
    required this.partialText,
  });

  /// [partialText] Partially recognized text
  final String partialText;

  static const String constructor = 'speechRecognitionResultPending';

  static SpeechRecognitionResultPending? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return SpeechRecognitionResultPending(
      partialText: json['partial_text'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'partial_text': partialText,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
