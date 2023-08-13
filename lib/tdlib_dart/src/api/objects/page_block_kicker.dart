import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// A kicker
@immutable
class PageBlockKicker extends PageBlock {
  const PageBlockKicker({
    required this.kicker,
  });

  /// [kicker] Kicker
  final RichText kicker;

  static const String constructor = 'pageBlockKicker';

  static PageBlockKicker? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PageBlockKicker(
      kicker: RichText.fromJson(
        json['kicker'] as Map<String, dynamic>?,
      )!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'kicker': kicker.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
