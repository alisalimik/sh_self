import 'package:sh_self/tdlib_dart/src/client/platform/platform.dart';

class PlatformImpl implements Platform {
  @override
  void destroy() {
    throw UnimplementedError();
  }

  @override
  Stream<Event> get events => throw UnimplementedError();

  @override
  Map<String, dynamic> execute({required Map<String, dynamic> function}) {
    throw UnimplementedError();
  }

  @override
  Future<void> initialize() {
    throw UnimplementedError();
  }

  @override
  void send({required Map<String, dynamic> function}) {
    throw UnimplementedError();
  }
}
