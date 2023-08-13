import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Contains a list of messages
@immutable
class Messages extends TdObject {
  const Messages({
    required this.totalCount,
    this.messages,
  });

  /// [totalCount] Approximate total number of messages found
  final int totalCount;

  /// [messages] List of messages; messages may be null
  final List<Message>? messages;

  static const String constructor = 'messages';

  static Messages? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return Messages(
      totalCount: json['total_count'] as int,
      messages: List<Message>.from(
        ((json['messages'] as List<dynamic>?) ?? <dynamic>[])
            .map(
              (item) => Message.fromJson(
                item as Map<String, dynamic>?,
              ),
            )
            .toList(),
      ),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'messages': messages?.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
