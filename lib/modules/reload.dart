import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/helpers.dart';
import 'package:sh_self/utils/models/sh_filter.dart';
import 'package:sh_self/utils/models/sh_module.dart';

void reload() => ShModule.onNewMessage(
      _function,
      ShFilter.me() + ShFilter.regex(r'^[Rr]eload|[Ll]oad$'),
    );
Future<void> _function(update) async {
  if (update is! td.UpdateNewMessage) return;
  final int index = RegExp(r'^[Rr]eload$')
          .hasMatch((update.message.content as td.MessageText).text.text)
      ? 0
      : 1;
  for (final String frame in anim[index]) {
    await Future.delayed(
      const Duration(
        milliseconds: 200,
      ),
    );
    await editMessage(update.message, frame);
  }
  autoDeleteMessage(update.message.chatId, [update.message.id]);
}

List<List<String>> anim = [
  [
    "`start reloading`",
    "░░░░░░░░░░░░░░",
    "▓░░░░░░░░░░░░░",
    "▓▓░░░░░░░░░░░░",
    "▓▓▓░░░░░░░░░░░",
    "▓▓▓▓░░░░░░░░░░",
    "▓▓▓▓▓░░░░░░░░░",
    "▓▓▓▓▓▓░░░░░░░░",
    "▓▓▓▓▓▓▓░░░░░░░",
    "▓▓▓▓▓▓▓▓░░░░░░",
    "▓▓▓▓▓▓▓▓▓░░░░░",
    "▓▓▓▓▓▓▓▓▓▓░░░░",
    "▓▓▓▓▓▓▓▓▓▓▓░░░",
    "▓▓▓▓▓▓▓▓▓▓▓▓░░",
    "▓▓▓▓▓▓▓▓▓▓▓▓▓░",
    "▓▓▓▓▓▓▓▓▓▓▓▓▓▓",
    "reloading.",
    "reloading..",
    "reloading...",
    "reloading.",
    "reloading..",
    "reloading...",
    "reloading.",
    "reloading..",
    "reloading...",
    "`reloaded! :)`",
  ],
  [
    "`start Loading`",
    "Load.",
    "lOad..",
    "loAd...",
    "loaD.",
    "Load..",
    "lOad...",
    "loAd.",
    "loaD..",
    "Load...",
    "lOad.",
    "loAd..",
    "loaD...",
    "`Loading! :)`",
  ]
];
