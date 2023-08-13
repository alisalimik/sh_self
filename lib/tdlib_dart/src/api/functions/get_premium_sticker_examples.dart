import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Returns examples of premium stickers for demonstration purposes
/// Returns [Stickers]
@immutable
class GetPremiumStickerExamples extends TdFunction {
  const GetPremiumStickerExamples();

  static const String constructor = 'getPremiumStickerExamples';

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
