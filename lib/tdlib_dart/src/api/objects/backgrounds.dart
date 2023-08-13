import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Contains a list of backgrounds
@immutable
class Backgrounds extends TdObject {
  const Backgrounds({
    required this.backgrounds,
  });

  /// [backgrounds] A list of backgrounds
  final List<Background> backgrounds;

  static const String constructor = 'backgrounds';

  static Backgrounds? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return Backgrounds(
      backgrounds: List<Background>.from(
        ((json['backgrounds'] as List<dynamic>?) ?? <dynamic>[])
            .map(
              (item) => Background.fromJson(
                item as Map<String, dynamic>?,
              ),
            )
            .toList(),
      ),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'backgrounds': backgrounds.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
