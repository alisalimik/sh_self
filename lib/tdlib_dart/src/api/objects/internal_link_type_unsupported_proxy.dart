import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The link is a link to an unsupported proxy. An alert can be shown to the
/// user
@immutable
class InternalLinkTypeUnsupportedProxy extends InternalLinkType {
  const InternalLinkTypeUnsupportedProxy();

  static const String constructor = 'internalLinkTypeUnsupportedProxy';

  static InternalLinkTypeUnsupportedProxy? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeUnsupportedProxy();
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
