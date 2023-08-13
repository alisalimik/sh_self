import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Represents a bot, which can be added to attachment menu
@immutable
class AttachmentMenuBot extends TdObject {
  const AttachmentMenuBot({
    required this.botUserId,
    required this.supportsSelfChat,
    required this.supportsUserChats,
    required this.supportsBotChats,
    required this.supportsGroupChats,
    required this.supportsChannelChats,
    required this.supportsSettings,
    required this.requestWriteAccess,
    required this.name,
    this.nameColor,
    this.defaultIcon,
    this.iosStaticIcon,
    this.iosAnimatedIcon,
    this.androidIcon,
    this.macosIcon,
    this.iconColor,
    this.webAppPlaceholder,
  });

  /// [botUserId] User identifier of the bot added to attachment menu
  final int botUserId;

  /// [supportsSelfChat] True, if the bot supports opening from attachment menu
  /// in the chat with the bot
  final bool supportsSelfChat;

  /// [supportsUserChats] True, if the bot supports opening from attachment menu
  /// in private chats with ordinary users
  final bool supportsUserChats;

  /// [supportsBotChats] True, if the bot supports opening from attachment menu
  /// in private chats with other bots
  final bool supportsBotChats;

  /// [supportsGroupChats] True, if the bot supports opening from attachment
  /// menu in basic group and supergroup chats
  final bool supportsGroupChats;

  /// [supportsChannelChats] True, if the bot supports opening from attachment
  /// menu in channel chats
  final bool supportsChannelChats;

  /// [supportsSettings] True, if the bot supports "settings_button_pressed"
  /// event
  final bool supportsSettings;

  /// [requestWriteAccess] True, if the user must be asked for the permission to
  /// the bot to send them messages
  final bool requestWriteAccess;

  /// [name] Name for the bot in attachment menu
  final String name;

  /// [nameColor] Color to highlight selected name of the bot if appropriate;
  /// may be null
  final AttachmentMenuBotColor? nameColor;

  /// [defaultIcon] Default attachment menu icon for the bot in SVG format; may
  /// be null
  final File? defaultIcon;

  /// [iosStaticIcon] Attachment menu icon for the bot in SVG format for the
  /// official iOS app; may be null
  final File? iosStaticIcon;

  /// [iosAnimatedIcon] Attachment menu icon for the bot in TGS format for the
  /// official iOS app; may be null
  final File? iosAnimatedIcon;

  /// [androidIcon] Attachment menu icon for the bot in TGS format for the
  /// official Android app; may be null
  final File? androidIcon;

  /// [macosIcon] Attachment menu icon for the bot in TGS format for the
  /// official native macOS app; may be null
  final File? macosIcon;

  /// [iconColor] Color to highlight selected icon of the bot if appropriate;
  /// may be null
  final AttachmentMenuBotColor? iconColor;

  /// [webAppPlaceholder] Default placeholder for opened Web Apps in SVG format;
  /// may be null
  final File? webAppPlaceholder;

  static const String constructor = 'attachmentMenuBot';

  static AttachmentMenuBot? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return AttachmentMenuBot(
      botUserId: json['bot_user_id'] as int,
      supportsSelfChat: json['supports_self_chat'] as bool,
      supportsUserChats: json['supports_user_chats'] as bool,
      supportsBotChats: json['supports_bot_chats'] as bool,
      supportsGroupChats: json['supports_group_chats'] as bool,
      supportsChannelChats: json['supports_channel_chats'] as bool,
      supportsSettings: json['supports_settings'] as bool,
      requestWriteAccess: json['request_write_access'] as bool,
      name: json['name'] as String,
      nameColor: AttachmentMenuBotColor.fromJson(
        json['name_color'] as Map<String, dynamic>?,
      ),
      defaultIcon: File.fromJson(
        json['default_icon'] as Map<String, dynamic>?,
      ),
      iosStaticIcon: File.fromJson(
        json['ios_static_icon'] as Map<String, dynamic>?,
      ),
      iosAnimatedIcon: File.fromJson(
        json['ios_animated_icon'] as Map<String, dynamic>?,
      ),
      androidIcon: File.fromJson(
        json['android_icon'] as Map<String, dynamic>?,
      ),
      macosIcon: File.fromJson(
        json['macos_icon'] as Map<String, dynamic>?,
      ),
      iconColor: AttachmentMenuBotColor.fromJson(
        json['icon_color'] as Map<String, dynamic>?,
      ),
      webAppPlaceholder: File.fromJson(
        json['web_app_placeholder'] as Map<String, dynamic>?,
      ),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'supports_self_chat': supportsSelfChat,
        'supports_user_chats': supportsUserChats,
        'supports_bot_chats': supportsBotChats,
        'supports_group_chats': supportsGroupChats,
        'supports_channel_chats': supportsChannelChats,
        'supports_settings': supportsSettings,
        'request_write_access': requestWriteAccess,
        'name': name,
        'name_color': nameColor?.toJson(),
        'default_icon': defaultIcon?.toJson(),
        'ios_static_icon': iosStaticIcon?.toJson(),
        'ios_animated_icon': iosAnimatedIcon?.toJson(),
        'android_icon': androidIcon?.toJson(),
        'macos_icon': macosIcon?.toJson(),
        'icon_color': iconColor?.toJson(),
        'web_app_placeholder': webAppPlaceholder?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
