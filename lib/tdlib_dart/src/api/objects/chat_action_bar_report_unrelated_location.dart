import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The chat is a location-based supergroup, which can be reported as having
/// unrelated location using the method reportChat with the reason
/// reportReasonUnrelatedLocation
@immutable
class ChatActionBarReportUnrelatedLocation extends ChatActionBar {
  const ChatActionBarReportUnrelatedLocation();

  static const String constructor = 'chatActionBarReportUnrelatedLocation';

  static ChatActionBarReportUnrelatedLocation? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const ChatActionBarReportUnrelatedLocation();
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
