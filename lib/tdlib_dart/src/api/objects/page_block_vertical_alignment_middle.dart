import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The content must be middle-aligned
@immutable
class PageBlockVerticalAlignmentMiddle extends PageBlockVerticalAlignment {
  const PageBlockVerticalAlignmentMiddle();

  static const String constructor = 'pageBlockVerticalAlignmentMiddle';

  static PageBlockVerticalAlignmentMiddle? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PageBlockVerticalAlignmentMiddle();
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
