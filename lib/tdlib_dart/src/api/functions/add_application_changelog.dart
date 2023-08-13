import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Adds server-provided application changelog as messages to the chat 777000
/// (Telegram) or as a stories; for official applications only. Returns a 404
/// error if nothing changed
/// Returns [Ok]
@immutable
class AddApplicationChangelog extends TdFunction {
  const AddApplicationChangelog({
    required this.previousApplicationVersion,
  });

  /// [previousApplicationVersion] The previous application version
  final String previousApplicationVersion;

  static const String constructor = 'addApplicationChangelog';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'previous_application_version': previousApplicationVersion,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
