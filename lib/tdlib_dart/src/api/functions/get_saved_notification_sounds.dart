import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Returns list of saved notification sounds. If a sound isn't in the list,
/// then default sound needs to be used
/// Returns [NotificationSounds]
@immutable
class GetSavedNotificationSounds extends TdFunction {
  const GetSavedNotificationSounds();

  static const String constructor = 'getSavedNotificationSounds';

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
