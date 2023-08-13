import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// The location-based chat is unrelated to its stated location
@immutable
class ReportReasonUnrelatedLocation extends ReportReason {
  const ReportReasonUnrelatedLocation();

  static const String constructor = 'reportReasonUnrelatedLocation';

  static ReportReasonUnrelatedLocation? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const ReportReasonUnrelatedLocation();
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
