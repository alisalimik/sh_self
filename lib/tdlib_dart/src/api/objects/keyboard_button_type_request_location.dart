import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// A button that sends the user's location when pressed; available only in
/// private chats
@immutable
class KeyboardButtonTypeRequestLocation extends KeyboardButtonType {
  const KeyboardButtonTypeRequestLocation();

  static const String constructor = 'keyboardButtonTypeRequestLocation';

  static KeyboardButtonTypeRequestLocation? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const KeyboardButtonTypeRequestLocation();
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
