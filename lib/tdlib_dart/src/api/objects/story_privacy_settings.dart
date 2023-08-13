import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Describes privacy settings of a story
@immutable
abstract class StoryPrivacySettings extends TdObject {
  const StoryPrivacySettings();

  static const String constructor = 'storyPrivacySettings';

  /// Inherited by:
  /// [StoryPrivacySettingsCloseFriends]
  /// [StoryPrivacySettingsContacts]
  /// [StoryPrivacySettingsEveryone]
  /// [StoryPrivacySettingsSelectedContacts]
  static StoryPrivacySettings? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StoryPrivacySettingsCloseFriends.constructor:
        return StoryPrivacySettingsCloseFriends.fromJson(json);
      case StoryPrivacySettingsContacts.constructor:
        return StoryPrivacySettingsContacts.fromJson(json);
      case StoryPrivacySettingsEveryone.constructor:
        return StoryPrivacySettingsEveryone.fromJson(json);
      case StoryPrivacySettingsSelectedContacts.constructor:
        return StoryPrivacySettingsSelectedContacts.fromJson(json);
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
