import 'package:sh_self/sh_self.dart';
import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/helpers.dart';
import 'package:sh_self/utils/models/sh_filter.dart';
import 'package:sh_self/utils/models/sh_message_type.dart';
import 'package:sh_self/utils/models/sh_module.dart';

void mutedList() => ShModule.onNewMessage(
      _function,
      ShFilter.me() + ShFilter.regex('[Mm]utelist? ?(.*)'),
    );
Future<void> _function(update) async {
  if (update is! td.UpdateNewMessage) return;
  final td.MessageText incomingMessage =
      update.message.content as td.MessageText;
  final List<String> command = incomingMessage.text.text.split(" ");
  //String responseText = '';
  final StringBuffer responseBuffer = StringBuffer();

  if (command.length == 1) {
    responseBuffer.writeln('''
Mute list *Help*:
`mutelist all` - all muted users
`mutelist summery` - get muted users count
`mutelist message_type` - get muted users for special message type e.g., `mutelist text` __Case Sensitive__
`mutelist clear` - clear muted users list (optional splitted types)
`m message_type` - reply to user and the user will be toggle mute for the special message type
''');

    responseBuffer.write('*Supported mute filters*: ');
    responseBuffer
        .write(ShMessageType.values.map((e) => '`${e.name}`').join(' '));
  } else if (command[1] == "summery") {
    if (database.mutedUsers?.isEmpty == true) {
      responseBuffer.writeln("Mute list is empty!");
    } else {
      responseBuffer.writeln("Mute list Summery:");
      database.mutedUsers?.toMap().forEach((key, value) {
        if (key is ShMessageType) {
          responseBuffer.writeln("- *${key.name}*: __${value.length}__");
        }
      });
    }
  } else if (command[1] == "all") {
    if (database.mutedUsers?.isEmpty == true) {
      responseBuffer.writeln("Mute list is empty!");
    } else {
      responseBuffer.writeln("Mute list:");
      database.mutedUsers?.toMap().forEach((key, value) {
        if (value.isNotEmpty && key is ShMessageType) {
          responseBuffer.writeln("- *${key.name}*: __${value.length}__");
          for (final userId in value) {
            responseBuffer.writeln(generateUserLink(userId));
          }
        }
      });
    }
  } else if (command[1] == "clear") {
    final List<ShMessageType> toBeDeleted = ShMessageType.values.toList();
    if (command.length > 2) {
      toBeDeleted.clear();
      final List<String> availableFilters =
          ShMessageType.values.map((e) => e.name).toList();
      command.skip(2).forEach((element) {
        if (availableFilters.contains(element)) {
          toBeDeleted.add(ShMessageType.values.byName(element));
        }
      });
    }
    for (final ShMessageType key in toBeDeleted) {
      database.mutedUsers?.delete(key);
    }
    if (command.length == 2) {
      responseBuffer.writeln("Mute list *cleard*");
    } else {
      responseBuffer.writeln(
        "Mute list for __${toBeDeleted.map((e) => e.name).join('-')}__ *cleard*",
      );
    }
  } else {
    responseBuffer.writeln("Mute list for *${command[1]}*:");
    final List<ShMessageType> filteredCollection = ShMessageType.values
        .where((element) => element.name == command[1])
        .toList();
    if (filteredCollection.isEmpty) {
      responseBuffer.writeln("Command ${command[1]} *not found!*");
    } else {
      final ShMessageType muted = filteredCollection.first;
      final list = database.mutedUsers?.get(muted) ?? [];
      if (list.isEmpty) {
        responseBuffer.writeln("Mute list for *${command[1]}* is Empty!");
      } else {
        for (final int userId in list) {
          // ignore: unnecessary_string_escapes
          responseBuffer.writeln(generateUserLink(userId));
        }
      }
    }
  }
  editMessageAndAutoDelete(update.message, responseBuffer.toString());
}

String generateUserLink(int userId) {
  final StringBuffer buffer = StringBuffer();
  buffer.write(" --  [\\[");
  buffer.write(userId);
  buffer.write("\\]](tg://user?id=");
  buffer.write(userId);
  buffer.write(")");
  return buffer.toString();
}
