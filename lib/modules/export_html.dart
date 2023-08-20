import 'package:sh_self/utils/models/sh_filter.dart';
import 'package:sh_self/utils/models/sh_module.dart';

void exportHtml() => ShModule.onNewMessage(
      _function,
      ShFilter.me() + ShFilter.reply() + ShFilter.regex(r'^[Ee]xport [Hh]tml$'),
    );
Future<void> _function(update) async {}
