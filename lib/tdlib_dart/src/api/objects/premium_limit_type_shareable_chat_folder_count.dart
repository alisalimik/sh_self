import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The maximum number of added shareable chat folders
@immutable
class PremiumLimitTypeShareableChatFolderCount extends PremiumLimitType {
  const PremiumLimitTypeShareableChatFolderCount();

  static const String constructor = 'premiumLimitTypeShareableChatFolderCount';

  static PremiumLimitTypeShareableChatFolderCount? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeShareableChatFolderCount();
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
