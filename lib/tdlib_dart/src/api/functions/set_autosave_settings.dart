import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Sets autosave settings for the given scope. The method is guaranteed to
/// work only after at least one call to getAutosaveSettings
/// Returns [Ok]
@immutable
class SetAutosaveSettings extends TdFunction {
  const SetAutosaveSettings({
    required this.scope,
    this.settings,
  });

  /// [scope] Autosave settings scope
  final AutosaveSettingsScope scope;

  /// [settings] New autosave settings for the scope; pass null to set autosave
  /// settings to default
  final ScopeAutosaveSettings? settings;

  static const String constructor = 'setAutosaveSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'scope': scope.toJson(),
        'settings': settings?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
