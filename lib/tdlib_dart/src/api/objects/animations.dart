import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Represents a list of animations
@immutable
class Animations extends TdObject {
  const Animations({
    required this.animations,
  });

  /// [animations] List of animations
  final List<Animation> animations;

  static const String constructor = 'animations';

  static Animations? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return Animations(
      animations: List<Animation>.from(
        ((json['animations'] as List<dynamic>?) ?? <dynamic>[])
            .map(
              (item) => Animation.fromJson(
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
        'animations': animations.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
