import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// A list of data blocks
@immutable
class PageBlockList extends PageBlock {
  const PageBlockList({
    required this.items,
  });

  /// [items] The items of the list
  final List<PageBlockListItem> items;

  static const String constructor = 'pageBlockList';

  static PageBlockList? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PageBlockList(
      items: List<PageBlockListItem>.from(
        ((json['items'] as List<dynamic>?) ?? <dynamic>[])
            .map(
              (item) => PageBlockListItem.fromJson(
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
        'items': items.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
