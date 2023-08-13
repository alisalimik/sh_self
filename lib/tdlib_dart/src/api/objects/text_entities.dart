import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Contains a list of text entities
@immutable
class TextEntities extends TdObject {
  const TextEntities({
    required this.entities,
  });

  /// [entities] List of text entities
  final List<TextEntity> entities;

  static const String constructor = 'textEntities';

  static TextEntities? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return TextEntities(
      entities: List<TextEntity>.from(
        ((json['entities'] as List<dynamic>?) ?? <dynamic>[])
            .map(
              (item) => TextEntity.fromJson(
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
        'entities': entities.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
