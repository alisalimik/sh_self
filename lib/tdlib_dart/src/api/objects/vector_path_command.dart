import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Represents a vector path command
@immutable
abstract class VectorPathCommand extends TdObject {
  const VectorPathCommand();

  static const String constructor = 'vectorPathCommand';

  /// Inherited by:
  /// [VectorPathCommandCubicBezierCurve]
  /// [VectorPathCommandLine]
  static VectorPathCommand? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case VectorPathCommandCubicBezierCurve.constructor:
        return VectorPathCommandCubicBezierCurve.fromJson(json);
      case VectorPathCommandLine.constructor:
        return VectorPathCommandLine.fromJson(json);
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
