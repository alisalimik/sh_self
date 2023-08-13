import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Contains the result of a custom request
@immutable
class CustomRequestResult extends TdObject {
  const CustomRequestResult({
    required this.result,
  });

  /// [result] A JSON-serialized result
  final String result;

  static const String constructor = 'customRequestResult';

  static CustomRequestResult? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return CustomRequestResult(
      result: json['result'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'result': result,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
