import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// A background from the server
@immutable
class InputBackgroundRemote extends InputBackground {
  const InputBackgroundRemote({
    required this.backgroundId,
  });

  /// [backgroundId] The background identifier
  final int backgroundId;

  static const String constructor = 'inputBackgroundRemote';

  static InputBackgroundRemote? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InputBackgroundRemote(
      backgroundId: int.tryParse(json['background_id'].toString()) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'background_id': backgroundId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
