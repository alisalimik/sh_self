import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Contains information about one session in a Telegram application used by
/// the current user. Sessions must be shown to the user in the returned order
@immutable
class Session extends TdObject {
  const Session({
    required this.id,
    required this.isCurrent,
    required this.isPasswordPending,
    required this.canAcceptSecretChats,
    required this.canAcceptCalls,
    required this.type,
    required this.apiId,
    required this.applicationName,
    required this.applicationVersion,
    required this.isOfficialApplication,
    required this.deviceModel,
    required this.platform,
    required this.systemVersion,
    required this.logInDate,
    required this.lastActiveDate,
    required this.ip,
    required this.country,
    required this.region,
  });

  /// [id] Session identifier
  final int id;

  /// [isCurrent] True, if this session is the current session
  final bool isCurrent;

  /// [isPasswordPending] True, if a 2-step verification password is needed to
  /// complete authorization of the session
  final bool isPasswordPending;

  /// [canAcceptSecretChats] True, if incoming secret chats can be accepted by
  /// the session
  final bool canAcceptSecretChats;

  /// [canAcceptCalls] True, if incoming calls can be accepted by the session
  final bool canAcceptCalls;

  /// [type] Session type based on the system and application version, which can
  /// be used to display a corresponding icon
  final SessionType type;

  /// [apiId] Telegram API identifier, as provided by the application
  final int apiId;

  /// [applicationName] Name of the application, as provided by the application
  final String applicationName;

  /// [applicationVersion] The version of the application, as provided by the
  /// application
  final String applicationVersion;

  /// [isOfficialApplication] True, if the application is an official
  /// application or uses the api_id of an official application
  final bool isOfficialApplication;

  /// [deviceModel] Model of the device the application has been run or is
  /// running on, as provided by the application
  final String deviceModel;

  /// [platform] Operating system the application has been run or is running on,
  /// as provided by the application
  final String platform;

  /// [systemVersion] Version of the operating system the application has been
  /// run or is running on, as provided by the application
  final String systemVersion;

  /// [logInDate] Point in time (Unix timestamp) when the user has logged in
  final int logInDate;

  /// [lastActiveDate] Point in time (Unix timestamp) when the session was last
  /// used
  final int lastActiveDate;

  /// [ip] IP address from which the session was created, in human-readable
  /// format
  final String ip;

  /// [country] A two-letter country code for the country from which the session
  /// was created, based on the IP address
  final String country;

  /// [region] Region code from which the session was created, based on the IP
  /// address
  final String region;

  static const String constructor = 'session';

  static Session? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return Session(
      id: int.tryParse(json['id'].toString()) ?? 0,
      isCurrent: json['is_current'] as bool,
      isPasswordPending: json['is_password_pending'] as bool,
      canAcceptSecretChats: json['can_accept_secret_chats'] as bool,
      canAcceptCalls: json['can_accept_calls'] as bool,
      type: SessionType.fromJson(
        json['type'] as Map<String, dynamic>?,
      )!,
      apiId: json['api_id'] as int,
      applicationName: json['application_name'] as String,
      applicationVersion: json['application_version'] as String,
      isOfficialApplication: json['is_official_application'] as bool,
      deviceModel: json['device_model'] as String,
      platform: json['platform'] as String,
      systemVersion: json['system_version'] as String,
      logInDate: json['log_in_date'] as int,
      lastActiveDate: json['last_active_date'] as int,
      ip: json['ip'] as String,
      country: json['country'] as String,
      region: json['region'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id.toString(),
        'is_current': isCurrent,
        'is_password_pending': isPasswordPending,
        'can_accept_secret_chats': canAcceptSecretChats,
        'can_accept_calls': canAcceptCalls,
        'type': type.toJson(),
        'api_id': apiId,
        'application_name': applicationName,
        'application_version': applicationVersion,
        'is_official_application': isOfficialApplication,
        'device_model': deviceModel,
        'platform': platform,
        'system_version': systemVersion,
        'log_in_date': logInDate,
        'last_active_date': lastActiveDate,
        'ip': ip,
        'country': country,
        'region': region,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
