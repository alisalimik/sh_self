import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Returns the received vector of objects containing a string; for testing
/// only. This is an offline method. Can be called before authorization
/// Returns [TestVectorStringObject]
@immutable
class TestCallVectorStringObject extends TdFunction {
  const TestCallVectorStringObject({
    required this.x,
  });

  /// [x] Vector of objects to return
  final List<TestString> x;

  static const String constructor = 'testCallVectorStringObject';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'x': x.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
