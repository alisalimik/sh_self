import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The content must be top-aligned
@immutable
class PageBlockVerticalAlignmentTop extends PageBlockVerticalAlignment {
  const PageBlockVerticalAlignmentTop();

  static const String constructor = 'pageBlockVerticalAlignmentTop';

  static PageBlockVerticalAlignmentTop? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PageBlockVerticalAlignmentTop();
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
