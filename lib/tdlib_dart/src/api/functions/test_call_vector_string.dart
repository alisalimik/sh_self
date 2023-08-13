import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Returns the received vector of strings; for testing only. This is an
/// offline method. Can be called before authorization
/// Returns [TestVectorString]
@immutable
class TestCallVectorString extends TdFunction {
  const TestCallVectorString({
    required this.x,
  });

  /// [x] Vector of strings to return
  final List<String> x;

  static const String constructor = 'testCallVectorString';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'x': x.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
