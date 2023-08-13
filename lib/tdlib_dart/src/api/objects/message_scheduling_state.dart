import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Contains information about the time when a scheduled message will be sent
@immutable
abstract class MessageSchedulingState extends TdObject {
  const MessageSchedulingState();

  static const String constructor = 'messageSchedulingState';

  /// Inherited by:
  /// [MessageSchedulingStateSendAtDate]
  /// [MessageSchedulingStateSendWhenOnline]
  static MessageSchedulingState? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageSchedulingStateSendAtDate.constructor:
        return MessageSchedulingStateSendAtDate.fromJson(json);
      case MessageSchedulingStateSendWhenOnline.constructor:
        return MessageSchedulingStateSendWhenOnline.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
