import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// One shipping option
@immutable
class ShippingOption extends TdObject {
  const ShippingOption({
    required this.id,
    required this.title,
    required this.priceParts,
  });

  /// [id] Shipping option identifier
  final String id;

  /// [title] Option title
  final String title;

  /// [priceParts] A list of objects used to calculate the total shipping costs
  final List<LabeledPricePart> priceParts;

  static const String constructor = 'shippingOption';

  static ShippingOption? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ShippingOption(
      id: json['id'] as String,
      title: json['title'] as String,
      priceParts: List<LabeledPricePart>.from(
        ((json['price_parts'] as List<dynamic>?) ?? <dynamic>[])
            .map(
              (item) => LabeledPricePart.fromJson(
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
        'id': id,
        'title': title,
        'price_parts': priceParts.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
