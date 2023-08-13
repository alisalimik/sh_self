import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Returns the value of an option by its name. (Check the list of available
/// options on https://core.telegram.org/tdlib/options.) Can be called before
/// authorization. Can be called synchronously for options "version" and
/// "commit_hash"
/// Returns [OptionValue]
@immutable
class GetOption extends TdFunction {
  const GetOption({
    required this.name,
  });

  /// [name] The name of the option
  final String name;

  static const String constructor = 'getOption';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
