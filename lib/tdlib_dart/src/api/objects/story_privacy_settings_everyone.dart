import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The story can be viewed by everyone
@immutable
class StoryPrivacySettingsEveryone extends StoryPrivacySettings {
  const StoryPrivacySettingsEveryone();

  static const String constructor = 'storyPrivacySettingsEveryone';

  static StoryPrivacySettingsEveryone? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const StoryPrivacySettingsEveryone();
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
