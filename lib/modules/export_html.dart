import 'dart:convert';
import 'dart:io';

import 'package:sh_self/sh_self.dart';
import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/helpers.dart';
import 'package:sh_self/utils/models/sh_data_export.dart';
import 'package:sh_self/utils/models/sh_filter.dart';
import 'package:sh_self/utils/models/sh_module.dart';

void exportHtml() => ShModule.onNewMessage(
      _function,
      ShFilter.me() + ShFilter.regex(r'^[Ee]xport [Hh]tml$'),
    );
Future<void> _function(update) async {}
