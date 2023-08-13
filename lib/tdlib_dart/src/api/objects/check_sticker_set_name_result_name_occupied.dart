import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The name is occupied
@immutable
class CheckStickerSetNameResultNameOccupied extends CheckStickerSetNameResult {
  const CheckStickerSetNameResultNameOccupied();

  static const String constructor = 'checkStickerSetNameResultNameOccupied';

  static CheckStickerSetNameResultNameOccupied? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const CheckStickerSetNameResultNameOccupied();
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
