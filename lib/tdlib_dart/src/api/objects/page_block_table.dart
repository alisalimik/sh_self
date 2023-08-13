import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// A table
@immutable
class PageBlockTable extends PageBlock {
  const PageBlockTable({
    required this.caption,
    required this.cells,
    required this.isBordered,
    required this.isStriped,
  });

  /// [caption] Table caption
  final RichText caption;

  /// [cells] Table cells
  final List<List<PageBlockTableCell>> cells;

  /// [isBordered] True, if the table is bordered
  final bool isBordered;

  /// [isStriped] True, if the table is striped
  final bool isStriped;

  static const String constructor = 'pageBlockTable';

  static PageBlockTable? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PageBlockTable(
      caption: RichText.fromJson(
        json['caption'] as Map<String, dynamic>?,
      )!,
      cells: List<List<PageBlockTableCell>>.from(
        ((json['cells'] as List<dynamic>?) ?? <dynamic>[])
            .map(
              (item) => List<PageBlockTableCell>.from(
                ((json['List<PageBlockTableCell>'] as List<dynamic>?) ??
                        <dynamic>[])
                    .map(
                      (item) => PageBlockTableCell.fromJson(
                        item as Map<String, dynamic>?,
                      ),
                    )
                    .toList(),
              ),
            )
            .toList(),
      ),
      isBordered: json['is_bordered'] as bool,
      isStriped: json['is_striped'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'caption': caption.toJson(),
        'cells': cells
            .map((item) => item.map((item) => item.toJson()).toList())
            .toList(),
        'is_bordered': isBordered,
        'is_striped': isStriped,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
