import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Represents a JSON object
@immutable
class JsonValueObject extends JsonValue {
  const JsonValueObject({
    required this.members,
  });

  /// [members] The list of object members
  final List<JsonObjectMember> members;

  static const String constructor = 'jsonValueObject';

  static JsonValueObject? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return JsonValueObject(
      members: List<JsonObjectMember>.from(
        ((json['members'] as List<dynamic>?) ?? <dynamic>[])
            .map(
              (item) => JsonObjectMember.fromJson(
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
        'members': members.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
