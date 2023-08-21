// ignore_for_file: use_string_buffers

import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:collection/collection.dart';
import 'package:sh_self/utils/helpers.dart';
import 'package:sh_self/utils/html_assets/html.dart';
import 'package:sh_self/utils/html_assets/script_js.dart';
import 'package:sh_self/utils/html_assets/style_css.dart';
import 'package:sh_self/utils/models/sh_data_export.dart';

Future main() async {
  final File jsonFile = File("files/export_json.json");
  final String json = await jsonFile.readAsString();
  final exported = ShDataExport.fromJson(
    const JsonDecoder().convert(json) as Map<String, dynamic>,
  );
  await createStoriesPage(exported);
  await createProfilePicturesPage(exported);
  await createFrequentContactsPage(exported);
  await createSessionsPage(exported);
  await createContactsPage(exported);
  await createChatsPage(exported);
  await createHomePage(exported);
  await createOtherDataBeta(
    const JsonEncoder().convert(exported.otherData.toJson()),
  );
  await createDependencies();
}

Future createMessagesPage(int chatIndex, Chat chat) async {
  final bool hasAnimatedSticker = chat.messages.any(
    (element) =>
        element.textEntities.any((element) => element.type == "custom_emoji"),
  );
  final bool hasPreText = chat.messages.any(
    (element) => element.textEntities.any((element) => element.type == "pre"),
  );
  final bool hasPersianText = chat.messages.any(
    (element) =>
        element.textEntities.any((element) => element.text.isPersian()),
  );
  final Map<DateTime, List<Message>> groupedMessages =
      groupMessagesByDay(chat.messages);
  final String newHead = head
      .replaceAll('{style}', '../../css/style.css')
      .replaceAll('{script}', '../../js/script.js');
  String headWhiteSpace = "";
  if (hasAnimatedSticker) {
    headWhiteSpace +=
        """<script src="https://unpkg.com/@lottiefiles/lottie-player@0.4.0/dist/tgs-player.js"></script>\n""";
  }
  if (hasPreText) {
    headWhiteSpace += """
       <link rel="stylesheet" href="https://unpkg.com/@highlightjs/cdn-assets@11.8.0/styles/vs.min.css">
       <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.8.0/highlight.min.js"></script>
       <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.8.0/languages/dart.min.js"></script>
      <script>hljs.highlightAll();</script>
       """;
  }
  if (hasPersianText) {
    headWhiteSpace += """
<link href="https://cdn.jsdelivr.net/gh/rastikerdar/vazirmatn@v33.003/Vazirmatn-font-face.css" rel="stylesheet" type="text/css" />
       """;
  }
  String messagesPage = htmlDoc
      .replaceAll(
        '{head}',
        newHead.replaceAll('{headWhite}', headWhiteSpace),
      )
      .replaceAll('{body}', messagesBody);
  messagesPage = messagesPage.replaceAll('{title}', chat.name ?? '');
  String rows = "";
  final chatUserIds = chat.messages.map((e) => e.fromId);
  final Map<String, String> colorIndex = {};
  for (final String? userId in chatUserIds) {
    colorIndex.putIfAbsent(
      userId.toString(),
      () => (Random.secure().nextInt(7) + 1).toString(),
    );
  }
  int messageServiceIndex = 1;
  groupedMessages.forEach((key, value) {
    rows += messageService
        .replaceAll('{body}', formatDate(key))
        .replaceAll('{message_id}', messageServiceIndex.toString());
    messageServiceIndex += 1;
    final List<List<Message>> groupedMessages = [];
    List<Message> currentGroup = [];

    for (var i = 0; i < value.length; i++) {
      if (i > 0 && value[i].fromId != value[i - 1].fromId) {
        groupedMessages.add(currentGroup);
        currentGroup = [];
      }
      currentGroup.add(value[i]);
    }

    if (currentGroup.isNotEmpty) {
      groupedMessages.add(currentGroup);
    }
    for (final List<Message> messages in groupedMessages) {
      int index = 0;
      for (final Message message in messages) {
        const sanitizer = HtmlEscape();
        String htmlFromEnteties = "";
        for (final TextEntities tE in message.textEntities) {
          String t = "";
          if (tE.type != 'pre') {
            t = tE.text.replaceAll('\n', '<br>');
          } else {
            t = sanitizer.convert(tE.text);
          }
          if (tE.type == "plain") {
            htmlFromEnteties += t;
          } else if (tE.type == "bold") {
            htmlFromEnteties += '<strong>$t</strong>';
          } else if (tE.type == "custom_emoji") {
            //htmlFromEnteties += '<a href="../../${tE.documentId}">$t</a>';
            htmlFromEnteties +=
                '<tgs-player id="${(message.textEntities.length <= 3 && !message.textEntities.any((element) => element.type != 'custom_emoji')) ? 'medium-tgs' : 'inline-tgs'}" autoplay loop mode="normal" src="stickers/${tE.documentId?.split("/").last}"><span class="tgs-placeholder">$t</span></tgs-player>';
            copyFileToDirectory(
              tE.documentId.toString(),
              'files/html_export/chats/chat_${chatIndex.toString().padLeft(2, "0")}/stickers',
            );
          } else if (tE.type == "text_link") {
            htmlFromEnteties += '<a href="${tE.href}">$t</a>';
          } else if (tE.type == "italic") {
            htmlFromEnteties += '<em>$t</em>';
          } else if (tE.type == "link") {
            htmlFromEnteties += '<a href="http://$t">$t</a>';
          } else if (tE.type == "code") {
            htmlFromEnteties += '<code>$t</code>';
          } else if (tE.type == "underline") {
            htmlFromEnteties += '<u>$t</u>';
          } else if (tE.type == "pre") {
            htmlFromEnteties += '<pre><code>$t</code></pre>';
          } else if (tE.type == "strikethrough") {
            htmlFromEnteties += '<s>$t</s>';
          } else if (tE.type == "spoiler") {
            htmlFromEnteties +=
                '<span class="spoiler" onclick="ShowSpoiler(this)"><span aria-hidden="true">$t</span></span>';
          } else if (tE.type == "bot_command") {
            htmlFromEnteties +=
                '<a href="" onclick="return ShowBotCommand(\'${t.split("/").last}\')">$t</a>';
          } else if (tE.type == "cashtag") {
            htmlFromEnteties +=
                '<a href="" onclick="return ShowCashtag(\'${t.split("\$").last}\')">$t</a>';
          } else if (tE.type == "hashtag") {
            htmlFromEnteties +=
                '<a href="" onclick="return ShowHashtag(\'${t.split("#").last}\')">$t</a>';
          } else if (tE.type == "phone") {
            htmlFromEnteties += '<a href="tel:$t">$t</a>';
          } else if (tE.type == "email") {
            htmlFromEnteties += '<a href="mailto:$t">$t</a>';
          } else if (tE.type == "mention_name") {
            htmlFromEnteties +=
                '<a href="" onClick="return ShowMentionName()">$t</a>';
          } else if (tE.type == "mention") {
            htmlFromEnteties +=
                '<a href="https://t.me/${t.split("@").last}">$t</a>';
          }
        }
        int photoWidth = 260;
        int photoHeight = 260;
        String photo = "";
        final double aspectRatio = (message.height ?? 0) / (message.width ?? 1);
        photoWidth =
            message.width != null ? clamp(message.width!, 120, 260).toInt() : 0;
        photoHeight = (photoWidth * aspectRatio).toInt();
        if (photoHeight > 400) {
          photoHeight = photoHeight ~/ 2;
          photoWidth = photoWidth ~/ 2;
        }
        if (message.photo != null) {
          copyFileToDirectory(
            message.photo!,
            'files/html_export/chats/chat_${chatIndex.toString().padLeft(2, "0")}/photos',
          );
          photo =
              '''<div class="media_wrap clearfix"><a class="photo_wrap clearfix pull_left" href="photos/${message.photo?.split("/").last}"><img class="photo" src="photos/${message.photo?.split("/").last}" style="width: ${photoWidth}px; height: ${photoHeight}px"/></a></div>''';
        }
        if (message.mediaType == "animation") {
          copyFileToDirectory(
            message.file!,
            'files/html_export/chats/chat_${chatIndex.toString().padLeft(2, "0")}/video_files',
          );
          copyFileToDirectory(
            message.thumbnail!,
            'files/html_export/chats/chat_${chatIndex.toString().padLeft(2, "0")}/video_files',
          );
          photo = gifItem
              .replaceAll(
                '{video}',
                'video_files/${message.file?.split("/").last}',
              )
              .replaceAll('{width}', photoWidth.toString())
              .replaceAll('{height}', photoHeight.toString())
              .replaceAll(
                '{thumbnail}',
                'video_files/${message.thumbnail?.split("/").last}',
              );
        }
        rows += (message.forwardedFrom != null
                ? forwardedMessageRow
                : (index == 0 ? messageTextRow : joinedMessageRow))
            .replaceAll('{message_id}', message.id.toString())
            .replaceAll('{picIndex}', colorIndex[message.fromId] ?? '1')
            .replaceAll('{date}', message.date.toIso8601String())
            .replaceAll(
              '{leading}',
              message.from.isNotEmpty ? message.from.substring(0, 1) : 'N',
            )
            .replaceAll(
              '{reply}',
              message.replyToMessageId != null
                  ? ''' <div class="reply_to details">In reply to <a href="#go_to_message${message.replyToMessageId}" onclick="return GoToMessage(${message.replyToMessageId})">this message</a></div>'''
                  : '',
            )
            .replaceAll(
              '{photo}',
              photo,
            )
            .replaceAll(
              '{hour}',
              '${message.date.hour.toString().padLeft(2, '0')}:${message.date.minute.toString().padLeft(2, '0')}',
            )
            .replaceAll(
              '{text}',
              (index > 0 && htmlFromEnteties.isPersian())
                  ? '<br>$htmlFromEnteties'
                  : htmlFromEnteties,
            )
            .replaceAll('{forwarded_name}', message.forwardedFrom.toString())
            .replaceAll(
              '{leading2}',
              message.forwardedFrom != null && message.forwardedFrom!.isNotEmpty
                  ? message.forwardedFrom!.substring(0, 1)
                  : '',
            )
            .replaceAll('{from_name}', message.from);
        index += 1;
      }
    }
  });

  messagesPage = messagesPage.replaceAll('{rows}', rows);
  final File out = File(
    'files/html_export/chats/chat_${chatIndex.toString().padLeft(2, "0")}/messages.html',
  );
  out.createSync(recursive: true);
  await out.writeAsString(messagesPage);
}

Future createStoriesPage(ShDataExport exported) async {
  String storiesPage = htmlDoc
      .replaceAll(
        '{head}',
        head
            .replaceAll('{headWhite}', '')
            .replaceAll('{style}', '../css/style.css')
            .replaceAll('{script}', '../js/script.js'),
      )
      .replaceAll('{body}', listPage);
  storiesPage = storiesPage
      .replaceAll(
        '{details}',
        '',
      )
      .replaceAll('{title}', 'Archived stories');
  String rows = "";
  for (final Story story in exported.stories) {
    rows += storyRow
        .replaceAll('{storyUrl}', story.media)
        .replaceAll('{date}', story.date.toIso8601String())
        .replaceAll('{name}', story.media)
        .replaceAll('{caption}', story.caption.toString())
        .replaceAll('{expiring}', story.expires.toIso8601String());
  }
  storiesPage = storiesPage.replaceAll('{rows}', rows);
  final File out = File('files/html_export/lists/stories.html');
  out.createSync(recursive: true);
  await out.writeAsString(storiesPage);
}

Future createProfilePicturesPage(ShDataExport exported) async {
  String profilePicturesPage = htmlDoc
      .replaceAll(
        '{head}',
        head
            .replaceAll('{headWhite}', '')
            .replaceAll('{style}', '../css/style.css')
            .replaceAll('{script}', '../js/script.js'),
      )
      .replaceAll('{body}', listPage);
  profilePicturesPage = profilePicturesPage
      .replaceAll('{details}', '')
      .replaceAll('{title}', 'Profile pictures');
  String rows = "";
  for (final ProfilePicture profile in exported.profilePictures) {
    copyFileToDirectory(profile.photo, 'files/html_export/profile_pictures');
    final stat = await File(
      "files/html_export/profile_pictures/${profile.photo.split("/").last}",
    ).stat();
    rows += selectableListRow
        .replaceAll(
          '''
       <div class="userpic userpic{picIndex}" style="width: 48px; height: 48px">

        <div class="initials" style="line-height: 48px">
{leading}
        </div>

       </div>''',
          '       <img class="userpic" src="../profile_pictures/${profile.photo.split('/').last}" style="width: 48px; height: 48px"/>',
        )
        .replaceAll(
          '{targetUrl}',
          "../profile_pictures/${profile.photo.split("/").last}",
        )
        .replaceAll('{trailing}', profile.date.toIso8601String())
        .replaceAll('{title}', profile.photo.split("/").last)
        .replaceAll('{subtitle}', '${stat.size ~/ 1024} KB');
  }
  profilePicturesPage = profilePicturesPage.replaceAll('{rows}', rows);
  final File out = File('files/html_export/lists/profile_pictures.html');
  out.createSync(recursive: true);
  await out.writeAsString(profilePicturesPage);
}

Future createFrequentContactsPage(ShDataExport exported) async {
  String frequentContactsPage = htmlDoc
      .replaceAll(
        '{head}',
        head
            .replaceAll('{headWhite}', '')
            .replaceAll('{style}', '../css/style.css')
            .replaceAll('{script}', '../js/script.js'),
      )
      .replaceAll('{body}', listPage);
  frequentContactsPage = frequentContactsPage
      .replaceAll(
        '{details}',
        exported.frequentContacts.about.replaceAll('\n', '<br>'),
      )
      .replaceAll('{title}', 'Frequent contacts');
  String rows = "";
  for (final FrequentContact fContact in exported.frequentContacts.list) {
    rows += listRow
        .replaceAll('{picIndex}', (Random.secure().nextInt(7) + 1).toString())
        .replaceAll('{leading}', fContact.name.substring(0, 1))
        .replaceAll('{trailing}', fContact.category)
        .replaceAll('{title}', fContact.name)
        .replaceAll('{subtitle}', "Rating: ${fContact.rating}");
  }
  frequentContactsPage = frequentContactsPage.replaceAll('{rows}', rows);
  final File out = File('files/html_export/lists/frequent.html');
  out.createSync(recursive: true);
  await out.writeAsString(frequentContactsPage);
}

Future createSessionsPage(ShDataExport exported) async {
  String sessionsPage = htmlDoc
      .replaceAll(
        '{head}',
        head
            .replaceAll('{headWhite}', '')
            .replaceAll('{style}', '../css/style.css')
            .replaceAll('{script}', '../js/script.js'),
      )
      .replaceAll('{body}', listPage);
  sessionsPage = sessionsPage
      .replaceAll('{details}', exported.sessions.about.replaceAll('\n', '<br>'))
      .replaceAll('{title}', 'Sessions');
  String rows = "";
  for (final Session session in exported.sessions.list) {
    rows += sessionRow
        .replaceAll('{picIndex}', (Random.secure().nextInt(7) + 1).toString())
        .replaceAll('{leading}', session.applicationName.substring(0, 1))
        .replaceAll(
          '{title}',
          "${session.applicationName} ${session.applicationVersion}",
        )
        .replaceAll(
          '{subname}',
          "${session.deviceModel}, ${session.platform} ${session.systemVersion}",
        )
        .replaceAll('{ip}', session.lastIp)
        .replaceAll('{address}', '${session.lastCountry} ${session.lastRegion}')
        .replaceAll('{lastActive}', session.lastActive.toIso8601String())
        .replaceAll('{created}', session.created.toIso8601String());
  }
  sessionsPage = sessionsPage.replaceAll('{rows}', rows);
  final File out = File('files/html_export/lists/sessions.html');
  out.createSync(recursive: true);
  await out.writeAsString(sessionsPage);
}

Future createContactsPage(ShDataExport exported) async {
  String contactsPage = htmlDoc
      .replaceAll(
        '{head}',
        head
            .replaceAll('{headWhite}', '')
            .replaceAll('{style}', '../css/style.css')
            .replaceAll('{script}', '../js/script.js'),
      )
      .replaceAll('{body}', listPage);
  contactsPage = contactsPage
      .replaceAll('{details}', exported.contacts.about.replaceAll('\n', '<br>'))
      .replaceAll('{title}', 'Contacts');
  String rows = "";
  for (final Contact contact in exported.contacts.list) {
    rows += listRow
        .replaceAll('{picIndex}', (Random.secure().nextInt(7) + 1).toString())
        .replaceAll('{leading}', contact.firstName.substring(0, 1))
        .replaceAll('{trailing}', contact.date?.toIso8601String() ?? '')
        .replaceAll('{title}', "${contact.firstName} ${contact.lastName}")
        .replaceAll('{subtitle}', contact.phoneNumber);
  }
  contactsPage = contactsPage.replaceAll('{rows}', rows);
  final File out = File('files/html_export/lists/contacts.html');
  out.createSync(recursive: true);
  await out.writeAsString(contactsPage);
}

Future createChatsPage(ShDataExport exported) async {
  String chatsPage = htmlDoc
      .replaceAll(
        '{head}',
        head
            .replaceAll('{headWhite}', '')
            .replaceAll('{style}', '../css/style.css')
            .replaceAll('{script}', '../js/script.js'),
      )
      .replaceAll('{body}', listPage);
  chatsPage = chatsPage
      .replaceAll('{details}', exported.chats.about.replaceAll('\n', '<br>'))
      .replaceAll('{title}', 'Chats');
  String rows = "";
  int index = 1;
  final List<Chat> sortedChats = exported.chats.list
      .sorted((a, b) => a.messages.length.compareTo(b.messages.length))
      .reversed
      .toList();
  for (final Chat chat in sortedChats) {
    String chatType = "";
    if (chat.type == "personal_chat") {
      chatType = "private";
    } else if (chat.type.contains("channel")) {
      chatType = "channel";
    } else if (chat.type.contains("bot")) {
      chatType = "bot";
    } else if (chat.type.contains("group")) {
      chatType = "group";
    } else if (chat.type == "saved_messages") {
      chatType = "saved messages";
    }
    if (chat.messages.isNotEmpty) {
      await createMessagesPage(index, chat);
      rows += selectableListRow
          .replaceAll(
            '{targetUrl}',
            '../chats/chat_${index.toString().padLeft(2, "0")}/messages.html',
          )
          .replaceAll('{picIndex}', (Random.secure().nextInt(7) + 1).toString())
          .replaceAll(
            '{leading}',
            chat.name.toString().isNotEmpty
                ? chat.name.toString().split('').first
                : '?',
          )
          .replaceAll('{trailing}', chatType)
          .replaceAll(
            '{title}',
            (chatType.contains("saved")
                    ? exported.personalInformation.firstName
                    : chat.name.toString())
                .replaceAll('null', 'Deleted Account'),
          )
          .replaceAll('{subtitle}', "${chat.messages.length} messages");
      index += 1;
    } else {
      rows += listRow
          .replaceAll('{picIndex}', (Random.secure().nextInt(7) + 1).toString())
          .replaceAll(
            '{leading}',
            chat.name.toString().isNotEmpty
                ? chat.name.toString().split('').first
                : '?',
          )
          .replaceAll('{trailing}', chatType)
          .replaceAll('{title}', chat.name.toString())
          .replaceAll('{subtitle}', "No outgoing messages");
    }
  }
  chatsPage = chatsPage.replaceAll('{rows}', rows);
  final File out = File('files/html_export/lists/chats.html');
  out.createSync(recursive: true);
  await out.writeAsString(chatsPage);
}

Future createHomePage(ShDataExport exported) async {
  final Map<String, String> replacements = {
    '{firstName}': exported.personalInformation.firstName,
    '{lastName}': exported.personalInformation.lastName,
    '{phoneNumber}': exported.personalInformation.phoneNumber,
    '{userName}': exported.personalInformation.username,
    '{bio}': exported.personalInformation.bio,
    '{userPic}':
        'profile_pictures/${exported.profilePictures.first.photo.split("/").last}',
    '{chatsCount}': exported.chats.list.length.toString(),
    '{contactsCount}': exported.contacts.list.length.toString(),
    '{frequentCount}': exported.frequentContacts.list.length.toString(),
    '{profilePicCount}': exported.profilePictures.length.toString(),
    '{storiesCount}': exported.stories.length.toString(),
    '{otherDataCount}': exported.otherData.installedStickers.length.toString(),
    '{sessionsCount}': exported.sessions.list.length.toString(),
    '{about}': exported.about.replaceAll('\n', '<br>'),
  };
  String bodyHtml = body;
  replacements.forEach((key, value) {
    bodyHtml = bodyHtml.replaceAll(key, value);
  });
  final String homeHtml = htmlDoc
      .replaceAll(
        '{head}',
        head
            .replaceAll('{headWhite}', '')
            .replaceAll('{style}', 'css/style.css')
            .replaceAll('{script}', 'js/script.js'),
      )
      .replaceAll('{body}', bodyHtml);
  final File out = File('files/html_export/export_results.html');
  out.createSync(recursive: true);
  await out.writeAsString(homeHtml);
}

Future createDependencies() async {
  final File style = File('files/html_export/css/style.css');
  style.createSync(recursive: true);
  await style.writeAsString(styleCss);
  final File script = File('files/html_export/js/script.js');
  script.createSync(recursive: true);
  await script.writeAsString(scriptJs);
}

Future createOtherDataBeta(String data) async {
  final File style = File('files/html_export/lists/other_data.json');
  style.createSync(recursive: true);
  await style.writeAsString(data);
}

Map<DateTime, List<Message>> groupMessagesByDay(List<Message> messages) {
  final groupByDay = groupBy(
    messages,
    (Message message) =>
        DateTime(message.date.year, message.date.month, message.date.day),
  );
  return groupByDay;
}

String formatDate(DateTime dateTime) {
  final List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  final String day = dateTime.day.toString();
  final String month = months[dateTime.month - 1];
  final String year = dateTime.year.toString();

  return '$day $month $year';
}

void copyFileToDirectory(String sourceFilePath, String targetDirectoryPath) {
  final File sourceFile = File(sourceFilePath);
  final Directory targetDirectory = Directory(targetDirectoryPath);

  if (!sourceFile.existsSync()) {
    //print("Source file does not exist.");
    return;
  }

  if (!targetDirectory.existsSync()) {
    targetDirectory.createSync(recursive: true);
  }

  final File targetFile =
      File('${targetDirectory.path}/${sourceFile.path.split('/').last}');

  try {
    sourceFile.copySync(targetFile.path);
    //print("File copied successfully to ${targetFile.path}");
  } catch (e) {
    //print("Error copying file: $e");
  }
}
