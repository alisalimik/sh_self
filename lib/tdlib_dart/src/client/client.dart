import 'package:sh_self/tdlib_dart/src/client/client_impl.dart';
import 'package:sh_self/tdlib_dart/src/client/platform/web/web_platform.dart'
    if (dart.library.ffi) 'platform/io/io_platform.dart';
import 'package:sh_self/tdlib_dart/td_api.dart';

abstract class Client {
  /// Creates new Client.
  factory Client.create() => ClientImpl(platform: PlatformImpl());

  /// Receives incoming updates.
  Stream<TdObject> get updates;

  /// Client initiation. Must be called once after creation.
  Future<void> initialize();

  /// Sends a request to the TDLib. Must be called after initialization.
  Future<T> send<T extends TdObject>(TdFunction function);

  /// Synchronously executes a TDLib request. Only a few marked accordingly
  /// requests can be executed synchronously. Must be called after
  /// initialization.
  T execute<T extends TdObject>(TdFunction function);

  /// Destroy client. Must be called once after initialization.
  void destroy();
}
