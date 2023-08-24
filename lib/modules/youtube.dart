import 'dart:io';

import 'package:path/path.dart';
import 'package:sh_self/sh_self.dart';
import 'package:sh_self/tdlib_dart/td_api.dart' as td;
import 'package:sh_self/utils/helpers.dart';
import 'package:sh_self/utils/models/sh_filter.dart';
import 'package:sh_self/utils/models/sh_module.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

void youtube() => ShModule.onNewMessage(
      _function,
      ShFilter.me() + ShFilter.regex(r'^[Yy]t (.*)$'),
    );
Future<void> _function(update) async {
  if (update is! td.UpdateNewMessage) return;
  telegramApp.addLog("running youtube");
  final String youtubeLink =
      (update.message.content as td.MessageText).text.text.split(" ")[1];
  final regex = RegExp(youtubeRegEx);
  if (!regex.hasMatch(youtubeLink)) {
    await editMessageAndAutoDelete(
      update.message,
      'Please use: yt *youtube video link*',
    );
    return;
  }
  final yt = YoutubeExplode();
  final video = await yt.videos.get(youtubeLink);
  final title = video.title; // "Scamazon Prime"
  final author = video.author; // "Jim Browning"
  final duration = video.duration; // Instance of Duration - 0:19:48.00000
  String text =
      "Youtube video fetched:\ntitle: $title\nauthor: $author\nduration:${duration?.inMinutes}:${(duration?.inSeconds ?? 0) % 60}\n";
  editMessage(update.message, text);
  final manifest =
      await yt.videos.streamsClient.getManifest(youtubeLink.split("=").last);
  final streamInfo = manifest.muxed.first;
  text +=
      "Resolution: ${streamInfo.videoResolution.width}*${streamInfo.videoResolution.height}\nQuality:${streamInfo.qualityLabel}\n";
  editMessage(update.message, text);
  final stream = yt.videos.streamsClient.get(streamInfo);

  // Open a file for writing.
  final file = File(
    join(
      'files',
      'youtube',
      '${youtubeLink.split("=").last}.${streamInfo.container.name}',
    ),
  );
  await file.create(recursive: true);
  final fileStream = file.openWrite();
  // Pipe all the content of the stream into the file.
  await stream.pipe(fileStream);
  // Close the file.
  await fileStream.flush();
  await fileStream.close();
  await telegramApp.client.send(
    td.SendMessage(
      chatId: update.message.chatId,
      messageThreadId: update.message.messageThreadId,
      inputMessageContent: td.InputMessageVideo(
        duration: duration?.inSeconds ?? 0,
        width: streamInfo.videoResolution.width,
        height: streamInfo.videoResolution.height,
        hasSpoiler: false,
        selfDestructTime: 0,
        supportsStreaming: true,
        addedStickerFileIds: const [],
        video: td.InputFileLocal(
          path: file.path,
        ),
      ),
      replyTo: td.MessageReplyToMessage(
        chatId: update.message.chatId,
        messageId: update.message.id,
      ),
    ),
  );
}

const String youtubeRegEx =
    r'^(?:https?:\/\/)?(?:www\.)?(?:youtube\.com\/watch\?v=|youtu\.be\/)([a-zA-Z0-9_-]{11})';
