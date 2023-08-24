import 'package:sh_self/sh_self.dart';
import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/helpers.dart';
import 'package:sh_self/utils/models/sh_filter.dart';
import 'package:sh_self/utils/models/sh_module.dart';
import 'package:shamsi_date/shamsi_date.dart';

void date() => ShModule.onNewMessage(
      _function,
      ShFilter.me() + ShFilter.regex(r'^[Tt]oday$'),
    );
Future<void> _function(update) async {
  if (update is! td.UpdateNewMessage) return;
  telegramApp.addLog("running date");
  final Jalali jalali = Jalali.now();
  final Gregorian gregorian = Gregorian.now();
  final String text =
      "Clock : **${durationFormat(jalali.time)}**\nJalali: *${dateFormat(jalali)}*\nGregorian : *${dateFormat(gregorian)}*\n";
  editMessageAndAutoDelete(update.message, text);
}

String dateFormat(Date d) {
  final f = d.formatter;
  return '${f.wN} ${f.d} ${f.mN} ${f.yy}';
}

String durationFormat(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, "0");
  final String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
  final String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
  return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
}
