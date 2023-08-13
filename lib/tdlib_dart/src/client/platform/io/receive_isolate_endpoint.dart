import 'dart:async';
import 'dart:convert';
import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart';
import 'package:sh_self/tdlib_dart/src/client/platform/io/json_bindings.dart';
import 'package:sh_self/tdlib_dart/src/client/platform/io/receive_isolate_data.dart';
import 'package:sh_self/tdlib_dart/src/client/platform/platform.dart';
import 'package:sh_self/tdlib_dart/td_api.dart';

Future<void> receiveIsolateEntryPoint(ReceiveIsolateData data) async {
  final JsonBindings jsonBindings = JsonBindings();
  final ffi.Pointer client = ffi.Pointer.fromAddress(data.clientAddress);
  while (true) {
    final ffi.Pointer<Utf8> result = jsonBindings.receive(client, 1);
    await Future<void>.delayed(Duration.zero);
    if (result != ffi.nullptr) {
      final String raw = result.toDartString();
      final Map<String, dynamic> newJson =
          json.decode(raw) as Map<String, dynamic>;
      final TdObject? object = newJson.toTdObject();

      if (object != null) {
        final int? extra = int.tryParse(newJson['@extra'].toString());

        data.isolateToMainPort.send(
          Event(
            object: object,
            extra: extra,
          ),
        );
      }
    }
  }
}
