import 'package:meta/meta.dart';

import 'package:sh_self/utils/models/sh_message_type.dart';

@immutable
class ShMessageTextAndType {
  final String text;
  final ShMessageType type;

  const ShMessageTextAndType(this.text, this.type);
}
