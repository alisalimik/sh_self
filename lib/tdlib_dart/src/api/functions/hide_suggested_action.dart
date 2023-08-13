import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Hides a suggested action
/// Returns [Ok]
@immutable
class HideSuggestedAction extends TdFunction {
  const HideSuggestedAction({
    required this.action,
  });

  /// [action] Suggested action to hide
  final SuggestedAction action;

  static const String constructor = 'hideSuggestedAction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'action': action.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
