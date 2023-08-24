import 'package:sh_self/sh_self.dart';
import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/helpers.dart';
import 'package:sh_self/utils/models/sh_filter.dart';
import 'package:sh_self/utils/models/sh_module.dart';
import 'package:system_info2/system_info2.dart';

const int megaByte = 1024 * 1024;

void server() => ShModule.onNewMessage(
      _function,
      ShFilter.me() + ShFilter.regex(r'^[Ss]erver$'),
    );
Future<void> _function(update) async {
  if (update is! td.UpdateNewMessage) return;
  telegramApp.addLog("running server");
  final int totalPhysicalMemory = SysInfo.getTotalPhysicalMemory() ~/ megaByte;
  final int freePhysicalMemory = SysInfo.getFreePhysicalMemory() ~/ megaByte;
  final int totalvirtualMemory = SysInfo.getTotalVirtualMemory() ~/ megaByte;
  final int freevirtualMemory = SysInfo.getFreeVirtualMemory() ~/ megaByte;

  final String text = """
Server System Info

Operating system: Name `${SysInfo.operatingSystemName}` Version `${SysInfo.operatingSystemVersion}`
Kernel          : Arch `${SysInfo.rawKernelArchitecture}` Name `${SysInfo.kernelName}` Version `${SysInfo.kernelVersion}`
Physical memory : Free `$freePhysicalMemory MB` Total `$totalPhysicalMemory MB`
Virtual memory  : Free `$freevirtualMemory MB` Total `$totalvirtualMemory MB`
CPU core        : Count `${SysInfo.cores.length}`
""";
  editMessageAndAutoDelete(update.message, text);
}
