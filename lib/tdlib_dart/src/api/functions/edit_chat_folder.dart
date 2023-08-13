import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Edits existing chat folder. Returns information about the edited chat
/// folder
/// Returns [ChatFolderInfo]
@immutable
class EditChatFolder extends TdFunction {
  const EditChatFolder({
    required this.chatFolderId,
    required this.folder,
  });

  /// [chatFolderId] Chat folder identifier
  final int chatFolderId;

  /// [folder] The edited chat folder
  final ChatFolder folder;

  static const String constructor = 'editChatFolder';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_folder_id': chatFolderId,
        'folder': folder.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
