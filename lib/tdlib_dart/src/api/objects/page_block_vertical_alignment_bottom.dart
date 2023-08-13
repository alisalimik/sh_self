import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The content must be bottom-aligned
@immutable
class PageBlockVerticalAlignmentBottom extends PageBlockVerticalAlignment {
  const PageBlockVerticalAlignmentBottom();

  static const String constructor = 'pageBlockVerticalAlignmentBottom';

  static PageBlockVerticalAlignmentBottom? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PageBlockVerticalAlignmentBottom();
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
