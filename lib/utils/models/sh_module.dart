import 'package:sh_self/tdlib_dart/td_api.dart';
import 'package:sh_self/utils/models/sh_event.dart';
import 'package:sh_self/utils/models/sh_filter.dart';

class ShModule {
  final ShFilter filter;
  final int priority;
  final String name;
  final Future<void> Function(Update) function;

  ShModule._privateConstructor({
    required this.name,
    this.filter = const ShFilter(),
    this.priority = 0,
    required this.function,
  }) {
    registerModule(this);
  }

  factory ShModule._eventFactory(
    Future<void> Function(Update) function,
    ShEvent event,
    ShFilter filter,
    int priority,
  ) {
    return ShModule._privateConstructor(
      name: function.toString(),
      filter: filter.copyWith(eventFilter: [event]),
      priority: priority,
      function: function,
    );
  }

  static void onNewMessage(
    Future<void> Function(Update) function, [
    ShFilter filter = const ShFilter(),
    int priority = 0,
  ]) =>
      ShModule._eventFactory(function, ShEvent.onNewMessage, filter, priority);
  static void onEditMessage(
    Future<void> Function(Update) function, [
    ShFilter filter = const ShFilter(),
    int priority = 0,
  ]) =>
      ShModule._eventFactory(function, ShEvent.onEditMessage, filter, priority);
  static void onUpdateMessage(
    Future<void> Function(Update) function, [
    ShFilter filter = const ShFilter(),
    int priority = 0,
  ]) =>
      ShModule._eventFactory(
        function,
        ShEvent.onDeleteMessages,
        filter,
        priority,
      );
  static void onDeleteMessages(
    Future<void> Function(Update) function, [
    ShFilter filter = const ShFilter(),
    int priority = 0,
  ]) =>
      ShModule._eventFactory(function, ShEvent.onNewMessage, filter, priority);
  static void onCallbackQuery(
    Future<void> Function(Update) function, [
    ShFilter filter = const ShFilter(),
    int priority = 0,
  ]) =>
      ShModule._eventFactory(
        function,
        ShEvent.onCallbackQuery,
        filter,
        priority,
      );
  static void onMentioned(
    Future<void> Function(Update) function, [
    ShFilter filter = const ShFilter(),
    int priority = 0,
  ]) =>
      ShModule._eventFactory(function, ShEvent.onMentioned, filter, priority);
  static void onRawUpdate(
    Future<void> Function(Update) function, [
    ShFilter filter = const ShFilter(),
    int priority = 0,
  ]) =>
      ShModule._eventFactory(
        function,
        ShEvent.onRawUpdate,
        ShFilter.tdlib(),
        priority,
      );
  static void onUpdateAuthorizationState(
    Future<void> Function(Update) function, [
    ShFilter filter = const ShFilter(),
    int priority = 0,
  ]) =>
      ShModule._eventFactory(
        function,
        ShEvent.onUpdateAuthorizationState,
        ShFilter.tdlib(),
        0,
      );

  static void registerModule(ShModule module) {
    registeredModules.add(module);
  }

  static List<ShModule> registeredModules = [];
}
