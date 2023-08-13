import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The chat is public, because it is a location-based supergroup
@immutable
class PublicChatTypeIsLocationBased extends PublicChatType {
  const PublicChatTypeIsLocationBased();

  static const String constructor = 'publicChatTypeIsLocationBased';

  static PublicChatTypeIsLocationBased? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PublicChatTypeIsLocationBased();
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
