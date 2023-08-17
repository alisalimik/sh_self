// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../sh_data_export.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShDataExport _$ShDataExportFromJson(Map<String, dynamic> json) {
  return _ShDataExport.fromJson(json);
}

/// @nodoc
mixin _$ShDataExport {
  @JsonKey(name: "about")
  String get about => throw _privateConstructorUsedError;
  @JsonKey(name: "personal_information")
  PersonalInformation get personalInformation =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "profile_pictures")
  List<ProfilePicture> get profilePictures =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "stories")
  List<dynamic> get stories => throw _privateConstructorUsedError;
  @JsonKey(name: "contacts")
  ListWithAbout<Contact> get contacts => throw _privateConstructorUsedError;
  @JsonKey(name: "frequent_contacts")
  ListWithAbout<FrequentContact> get frequentContacts =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "sessions")
  ListWithAbout<Session> get sessions => throw _privateConstructorUsedError;
  @JsonKey(name: "web_sessions")
  ListWithAbout<Map<String, dynamic>> get webSessions =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "other_data")
  OtherData get otherData => throw _privateConstructorUsedError;
  @JsonKey(name: "chats")
  ListWithAbout<Chat> get chats => throw _privateConstructorUsedError;
  @JsonKey(name: "left_chats")
  ListWithAbout<Chat> get leftChats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShDataExportCopyWith<ShDataExport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShDataExportCopyWith<$Res> {
  factory $ShDataExportCopyWith(
          ShDataExport value, $Res Function(ShDataExport) then) =
      _$ShDataExportCopyWithImpl<$Res, ShDataExport>;
  @useResult
  $Res call(
      {@JsonKey(name: "about") String about,
      @JsonKey(name: "personal_information")
      PersonalInformation personalInformation,
      @JsonKey(name: "profile_pictures") List<ProfilePicture> profilePictures,
      @JsonKey(name: "stories") List<dynamic> stories,
      @JsonKey(name: "contacts") ListWithAbout<Contact> contacts,
      @JsonKey(name: "frequent_contacts")
      ListWithAbout<FrequentContact> frequentContacts,
      @JsonKey(name: "sessions") ListWithAbout<Session> sessions,
      @JsonKey(name: "web_sessions")
      ListWithAbout<Map<String, dynamic>> webSessions,
      @JsonKey(name: "other_data") OtherData otherData,
      @JsonKey(name: "chats") ListWithAbout<Chat> chats,
      @JsonKey(name: "left_chats") ListWithAbout<Chat> leftChats});

  $PersonalInformationCopyWith<$Res> get personalInformation;
  $ListWithAboutCopyWith<Contact, $Res> get contacts;
  $ListWithAboutCopyWith<FrequentContact, $Res> get frequentContacts;
  $ListWithAboutCopyWith<Session, $Res> get sessions;
  $ListWithAboutCopyWith<Map<String, dynamic>, $Res> get webSessions;
  $OtherDataCopyWith<$Res> get otherData;
  $ListWithAboutCopyWith<Chat, $Res> get chats;
  $ListWithAboutCopyWith<Chat, $Res> get leftChats;
}

/// @nodoc
class _$ShDataExportCopyWithImpl<$Res, $Val extends ShDataExport>
    implements $ShDataExportCopyWith<$Res> {
  _$ShDataExportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? about = null,
    Object? personalInformation = null,
    Object? profilePictures = null,
    Object? stories = null,
    Object? contacts = null,
    Object? frequentContacts = null,
    Object? sessions = null,
    Object? webSessions = null,
    Object? otherData = null,
    Object? chats = null,
    Object? leftChats = null,
  }) {
    return _then(_value.copyWith(
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      personalInformation: null == personalInformation
          ? _value.personalInformation
          : personalInformation // ignore: cast_nullable_to_non_nullable
              as PersonalInformation,
      profilePictures: null == profilePictures
          ? _value.profilePictures
          : profilePictures // ignore: cast_nullable_to_non_nullable
              as List<ProfilePicture>,
      stories: null == stories
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as ListWithAbout<Contact>,
      frequentContacts: null == frequentContacts
          ? _value.frequentContacts
          : frequentContacts // ignore: cast_nullable_to_non_nullable
              as ListWithAbout<FrequentContact>,
      sessions: null == sessions
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as ListWithAbout<Session>,
      webSessions: null == webSessions
          ? _value.webSessions
          : webSessions // ignore: cast_nullable_to_non_nullable
              as ListWithAbout<Map<String, dynamic>>,
      otherData: null == otherData
          ? _value.otherData
          : otherData // ignore: cast_nullable_to_non_nullable
              as OtherData,
      chats: null == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as ListWithAbout<Chat>,
      leftChats: null == leftChats
          ? _value.leftChats
          : leftChats // ignore: cast_nullable_to_non_nullable
              as ListWithAbout<Chat>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonalInformationCopyWith<$Res> get personalInformation {
    return $PersonalInformationCopyWith<$Res>(_value.personalInformation,
        (value) {
      return _then(_value.copyWith(personalInformation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ListWithAboutCopyWith<Contact, $Res> get contacts {
    return $ListWithAboutCopyWith<Contact, $Res>(_value.contacts, (value) {
      return _then(_value.copyWith(contacts: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ListWithAboutCopyWith<FrequentContact, $Res> get frequentContacts {
    return $ListWithAboutCopyWith<FrequentContact, $Res>(
        _value.frequentContacts, (value) {
      return _then(_value.copyWith(frequentContacts: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ListWithAboutCopyWith<Session, $Res> get sessions {
    return $ListWithAboutCopyWith<Session, $Res>(_value.sessions, (value) {
      return _then(_value.copyWith(sessions: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ListWithAboutCopyWith<Map<String, dynamic>, $Res> get webSessions {
    return $ListWithAboutCopyWith<Map<String, dynamic>, $Res>(
        _value.webSessions, (value) {
      return _then(_value.copyWith(webSessions: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OtherDataCopyWith<$Res> get otherData {
    return $OtherDataCopyWith<$Res>(_value.otherData, (value) {
      return _then(_value.copyWith(otherData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ListWithAboutCopyWith<Chat, $Res> get chats {
    return $ListWithAboutCopyWith<Chat, $Res>(_value.chats, (value) {
      return _then(_value.copyWith(chats: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ListWithAboutCopyWith<Chat, $Res> get leftChats {
    return $ListWithAboutCopyWith<Chat, $Res>(_value.leftChats, (value) {
      return _then(_value.copyWith(leftChats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ShDataExportCopyWith<$Res>
    implements $ShDataExportCopyWith<$Res> {
  factory _$$_ShDataExportCopyWith(
          _$_ShDataExport value, $Res Function(_$_ShDataExport) then) =
      __$$_ShDataExportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "about") String about,
      @JsonKey(name: "personal_information")
      PersonalInformation personalInformation,
      @JsonKey(name: "profile_pictures") List<ProfilePicture> profilePictures,
      @JsonKey(name: "stories") List<dynamic> stories,
      @JsonKey(name: "contacts") ListWithAbout<Contact> contacts,
      @JsonKey(name: "frequent_contacts")
      ListWithAbout<FrequentContact> frequentContacts,
      @JsonKey(name: "sessions") ListWithAbout<Session> sessions,
      @JsonKey(name: "web_sessions")
      ListWithAbout<Map<String, dynamic>> webSessions,
      @JsonKey(name: "other_data") OtherData otherData,
      @JsonKey(name: "chats") ListWithAbout<Chat> chats,
      @JsonKey(name: "left_chats") ListWithAbout<Chat> leftChats});

  @override
  $PersonalInformationCopyWith<$Res> get personalInformation;
  @override
  $ListWithAboutCopyWith<Contact, $Res> get contacts;
  @override
  $ListWithAboutCopyWith<FrequentContact, $Res> get frequentContacts;
  @override
  $ListWithAboutCopyWith<Session, $Res> get sessions;
  @override
  $ListWithAboutCopyWith<Map<String, dynamic>, $Res> get webSessions;
  @override
  $OtherDataCopyWith<$Res> get otherData;
  @override
  $ListWithAboutCopyWith<Chat, $Res> get chats;
  @override
  $ListWithAboutCopyWith<Chat, $Res> get leftChats;
}

/// @nodoc
class __$$_ShDataExportCopyWithImpl<$Res>
    extends _$ShDataExportCopyWithImpl<$Res, _$_ShDataExport>
    implements _$$_ShDataExportCopyWith<$Res> {
  __$$_ShDataExportCopyWithImpl(
      _$_ShDataExport _value, $Res Function(_$_ShDataExport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? about = null,
    Object? personalInformation = null,
    Object? profilePictures = null,
    Object? stories = null,
    Object? contacts = null,
    Object? frequentContacts = null,
    Object? sessions = null,
    Object? webSessions = null,
    Object? otherData = null,
    Object? chats = null,
    Object? leftChats = null,
  }) {
    return _then(_$_ShDataExport(
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      personalInformation: null == personalInformation
          ? _value.personalInformation
          : personalInformation // ignore: cast_nullable_to_non_nullable
              as PersonalInformation,
      profilePictures: null == profilePictures
          ? _value._profilePictures
          : profilePictures // ignore: cast_nullable_to_non_nullable
              as List<ProfilePicture>,
      stories: null == stories
          ? _value._stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as ListWithAbout<Contact>,
      frequentContacts: null == frequentContacts
          ? _value.frequentContacts
          : frequentContacts // ignore: cast_nullable_to_non_nullable
              as ListWithAbout<FrequentContact>,
      sessions: null == sessions
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as ListWithAbout<Session>,
      webSessions: null == webSessions
          ? _value.webSessions
          : webSessions // ignore: cast_nullable_to_non_nullable
              as ListWithAbout<Map<String, dynamic>>,
      otherData: null == otherData
          ? _value.otherData
          : otherData // ignore: cast_nullable_to_non_nullable
              as OtherData,
      chats: null == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as ListWithAbout<Chat>,
      leftChats: null == leftChats
          ? _value.leftChats
          : leftChats // ignore: cast_nullable_to_non_nullable
              as ListWithAbout<Chat>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShDataExport implements _ShDataExport {
  const _$_ShDataExport(
      {@JsonKey(name: "about") required this.about,
      @JsonKey(name: "personal_information") required this.personalInformation,
      @JsonKey(name: "profile_pictures")
      required final List<ProfilePicture> profilePictures,
      @JsonKey(name: "stories") required final List<dynamic> stories,
      @JsonKey(name: "contacts") required this.contacts,
      @JsonKey(name: "frequent_contacts") required this.frequentContacts,
      @JsonKey(name: "sessions") required this.sessions,
      @JsonKey(name: "web_sessions") required this.webSessions,
      @JsonKey(name: "other_data") required this.otherData,
      @JsonKey(name: "chats") required this.chats,
      @JsonKey(name: "left_chats") required this.leftChats})
      : _profilePictures = profilePictures,
        _stories = stories;

  factory _$_ShDataExport.fromJson(Map<String, dynamic> json) =>
      _$$_ShDataExportFromJson(json);

  @override
  @JsonKey(name: "about")
  final String about;
  @override
  @JsonKey(name: "personal_information")
  final PersonalInformation personalInformation;
  final List<ProfilePicture> _profilePictures;
  @override
  @JsonKey(name: "profile_pictures")
  List<ProfilePicture> get profilePictures {
    if (_profilePictures is EqualUnmodifiableListView) return _profilePictures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_profilePictures);
  }

  final List<dynamic> _stories;
  @override
  @JsonKey(name: "stories")
  List<dynamic> get stories {
    if (_stories is EqualUnmodifiableListView) return _stories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stories);
  }

  @override
  @JsonKey(name: "contacts")
  final ListWithAbout<Contact> contacts;
  @override
  @JsonKey(name: "frequent_contacts")
  final ListWithAbout<FrequentContact> frequentContacts;
  @override
  @JsonKey(name: "sessions")
  final ListWithAbout<Session> sessions;
  @override
  @JsonKey(name: "web_sessions")
  final ListWithAbout<Map<String, dynamic>> webSessions;
  @override
  @JsonKey(name: "other_data")
  final OtherData otherData;
  @override
  @JsonKey(name: "chats")
  final ListWithAbout<Chat> chats;
  @override
  @JsonKey(name: "left_chats")
  final ListWithAbout<Chat> leftChats;

  @override
  String toString() {
    return 'ShDataExport(about: $about, personalInformation: $personalInformation, profilePictures: $profilePictures, stories: $stories, contacts: $contacts, frequentContacts: $frequentContacts, sessions: $sessions, webSessions: $webSessions, otherData: $otherData, chats: $chats, leftChats: $leftChats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShDataExport &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.personalInformation, personalInformation) ||
                other.personalInformation == personalInformation) &&
            const DeepCollectionEquality()
                .equals(other._profilePictures, _profilePictures) &&
            const DeepCollectionEquality().equals(other._stories, _stories) &&
            (identical(other.contacts, contacts) ||
                other.contacts == contacts) &&
            (identical(other.frequentContacts, frequentContacts) ||
                other.frequentContacts == frequentContacts) &&
            (identical(other.sessions, sessions) ||
                other.sessions == sessions) &&
            (identical(other.webSessions, webSessions) ||
                other.webSessions == webSessions) &&
            (identical(other.otherData, otherData) ||
                other.otherData == otherData) &&
            (identical(other.chats, chats) || other.chats == chats) &&
            (identical(other.leftChats, leftChats) ||
                other.leftChats == leftChats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      about,
      personalInformation,
      const DeepCollectionEquality().hash(_profilePictures),
      const DeepCollectionEquality().hash(_stories),
      contacts,
      frequentContacts,
      sessions,
      webSessions,
      otherData,
      chats,
      leftChats);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShDataExportCopyWith<_$_ShDataExport> get copyWith =>
      __$$_ShDataExportCopyWithImpl<_$_ShDataExport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShDataExportToJson(
      this,
    );
  }
}

abstract class _ShDataExport implements ShDataExport {
  const factory _ShDataExport(
      {@JsonKey(name: "about") required final String about,
      @JsonKey(name: "personal_information")
      required final PersonalInformation personalInformation,
      @JsonKey(name: "profile_pictures")
      required final List<ProfilePicture> profilePictures,
      @JsonKey(name: "stories") required final List<dynamic> stories,
      @JsonKey(name: "contacts") required final ListWithAbout<Contact> contacts,
      @JsonKey(name: "frequent_contacts")
      required final ListWithAbout<FrequentContact> frequentContacts,
      @JsonKey(name: "sessions") required final ListWithAbout<Session> sessions,
      @JsonKey(name: "web_sessions")
      required final ListWithAbout<Map<String, dynamic>> webSessions,
      @JsonKey(name: "other_data") required final OtherData otherData,
      @JsonKey(name: "chats") required final ListWithAbout<Chat> chats,
      @JsonKey(name: "left_chats")
      required final ListWithAbout<Chat> leftChats}) = _$_ShDataExport;

  factory _ShDataExport.fromJson(Map<String, dynamic> json) =
      _$_ShDataExport.fromJson;

  @override
  @JsonKey(name: "about")
  String get about;
  @override
  @JsonKey(name: "personal_information")
  PersonalInformation get personalInformation;
  @override
  @JsonKey(name: "profile_pictures")
  List<ProfilePicture> get profilePictures;
  @override
  @JsonKey(name: "stories")
  List<dynamic> get stories;
  @override
  @JsonKey(name: "contacts")
  ListWithAbout<Contact> get contacts;
  @override
  @JsonKey(name: "frequent_contacts")
  ListWithAbout<FrequentContact> get frequentContacts;
  @override
  @JsonKey(name: "sessions")
  ListWithAbout<Session> get sessions;
  @override
  @JsonKey(name: "web_sessions")
  ListWithAbout<Map<String, dynamic>> get webSessions;
  @override
  @JsonKey(name: "other_data")
  OtherData get otherData;
  @override
  @JsonKey(name: "chats")
  ListWithAbout<Chat> get chats;
  @override
  @JsonKey(name: "left_chats")
  ListWithAbout<Chat> get leftChats;
  @override
  @JsonKey(ignore: true)
  _$$_ShDataExportCopyWith<_$_ShDataExport> get copyWith =>
      throw _privateConstructorUsedError;
}

Chat _$ChatFromJson(Map<String, dynamic> json) {
  return _Chat.fromJson(json);
}

/// @nodoc
mixin _$Chat {
  String? get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  List<Message> get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCopyWith<Chat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCopyWith<$Res> {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) then) =
      _$ChatCopyWithImpl<$Res, Chat>;
  @useResult
  $Res call({String? name, String type, int id, List<Message> messages});
}

/// @nodoc
class _$ChatCopyWithImpl<$Res, $Val extends Chat>
    implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = null,
    Object? id = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$$_ChatCopyWith(_$_Chat value, $Res Function(_$_Chat) then) =
      __$$_ChatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String type, int id, List<Message> messages});
}

/// @nodoc
class __$$_ChatCopyWithImpl<$Res> extends _$ChatCopyWithImpl<$Res, _$_Chat>
    implements _$$_ChatCopyWith<$Res> {
  __$$_ChatCopyWithImpl(_$_Chat _value, $Res Function(_$_Chat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = null,
    Object? id = null,
    Object? messages = null,
  }) {
    return _then(_$_Chat(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Chat implements _Chat {
  const _$_Chat(
      {this.name,
      required this.type,
      required this.id,
      required final List<Message> messages})
      : _messages = messages;

  factory _$_Chat.fromJson(Map<String, dynamic> json) => _$$_ChatFromJson(json);

  @override
  final String? name;
  @override
  final String type;
  @override
  final int id;
  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'Chat(name: $name, type: $type, id: $id, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Chat &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, type, id,
      const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatCopyWith<_$_Chat> get copyWith =>
      __$$_ChatCopyWithImpl<_$_Chat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatToJson(
      this,
    );
  }
}

abstract class _Chat implements Chat {
  const factory _Chat(
      {final String? name,
      required final String type,
      required final int id,
      required final List<Message> messages}) = _$_Chat;

  factory _Chat.fromJson(Map<String, dynamic> json) = _$_Chat.fromJson;

  @override
  String? get name;
  @override
  String get type;
  @override
  int get id;
  @override
  List<Message> get messages;
  @override
  @JsonKey(ignore: true)
  _$$_ChatCopyWith<_$_Chat> get copyWith => throw _privateConstructorUsedError;
}

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: "date_unixtime")
  String get dateUnixtime => throw _privateConstructorUsedError;
  String? get from => throw _privateConstructorUsedError;
  @JsonKey(name: "from_id")
  String? get fromId => throw _privateConstructorUsedError;
  dynamic get text => throw _privateConstructorUsedError;
  @JsonKey(name: "text_entities")
  List<TextEntities> get textEntities => throw _privateConstructorUsedError;
  DateTime? get edited => throw _privateConstructorUsedError;
  @JsonKey(name: "edited_unixtime")
  String? get editedUnixtime => throw _privateConstructorUsedError;
  @JsonKey(name: "reply_to_message_id")
  int? get replyToMessageId => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  String? get actor => throw _privateConstructorUsedError;
  @JsonKey(name: "actor_id")
  String? get actorId => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;
  List<String>? get members => throw _privateConstructorUsedError;
  String? get file => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: "media_type")
  String? get mediaType => throw _privateConstructorUsedError;
  @JsonKey(name: "sticker_emoji")
  String? get stickerEmoji => throw _privateConstructorUsedError;
  @JsonKey(name: "mime_type")
  String? get mimeType => throw _privateConstructorUsedError;
  @JsonKey(name: "duration_seconds")
  int? get durationSeconds => throw _privateConstructorUsedError;
  @JsonKey(name: "forwarded_from")
  String? get forwardedFrom => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_information")
  String? get invoiceInformation => throw _privateConstructorUsedError;
  @JsonKey(name: "saved_from")
  String? get savedFrom => throw _privateConstructorUsedError;
  @JsonKey(name: "contact_information")
  Contact? get contactInformation => throw _privateConstructorUsedError;
  @JsonKey(name: "message_id")
  int? get messageId => throw _privateConstructorUsedError;
  String? get cost => throw _privateConstructorUsedError;
  int? get months => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call(
      {int id,
      String type,
      DateTime date,
      @JsonKey(name: "date_unixtime") String dateUnixtime,
      String? from,
      @JsonKey(name: "from_id") String? fromId,
      dynamic text,
      @JsonKey(name: "text_entities") List<TextEntities> textEntities,
      DateTime? edited,
      @JsonKey(name: "edited_unixtime") String? editedUnixtime,
      @JsonKey(name: "reply_to_message_id") int? replyToMessageId,
      String? photo,
      int? width,
      int? height,
      String? actor,
      @JsonKey(name: "actor_id") String? actorId,
      String? action,
      List<String>? members,
      String? file,
      String? thumbnail,
      @JsonKey(name: "media_type") String? mediaType,
      @JsonKey(name: "sticker_emoji") String? stickerEmoji,
      @JsonKey(name: "mime_type") String? mimeType,
      @JsonKey(name: "duration_seconds") int? durationSeconds,
      @JsonKey(name: "forwarded_from") String? forwardedFrom,
      @JsonKey(name: "invoice_information") String? invoiceInformation,
      @JsonKey(name: "saved_from") String? savedFrom,
      @JsonKey(name: "contact_information") Contact? contactInformation,
      @JsonKey(name: "message_id") int? messageId,
      String? cost,
      int? months,
      String? title});

  $ContactCopyWith<$Res>? get contactInformation;
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? date = null,
    Object? dateUnixtime = null,
    Object? from = freezed,
    Object? fromId = freezed,
    Object? text = freezed,
    Object? textEntities = null,
    Object? edited = freezed,
    Object? editedUnixtime = freezed,
    Object? replyToMessageId = freezed,
    Object? photo = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? actor = freezed,
    Object? actorId = freezed,
    Object? action = freezed,
    Object? members = freezed,
    Object? file = freezed,
    Object? thumbnail = freezed,
    Object? mediaType = freezed,
    Object? stickerEmoji = freezed,
    Object? mimeType = freezed,
    Object? durationSeconds = freezed,
    Object? forwardedFrom = freezed,
    Object? invoiceInformation = freezed,
    Object? savedFrom = freezed,
    Object? contactInformation = freezed,
    Object? messageId = freezed,
    Object? cost = freezed,
    Object? months = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateUnixtime: null == dateUnixtime
          ? _value.dateUnixtime
          : dateUnixtime // ignore: cast_nullable_to_non_nullable
              as String,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      fromId: freezed == fromId
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as dynamic,
      textEntities: null == textEntities
          ? _value.textEntities
          : textEntities // ignore: cast_nullable_to_non_nullable
              as List<TextEntities>,
      edited: freezed == edited
          ? _value.edited
          : edited // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      editedUnixtime: freezed == editedUnixtime
          ? _value.editedUnixtime
          : editedUnixtime // ignore: cast_nullable_to_non_nullable
              as String?,
      replyToMessageId: freezed == replyToMessageId
          ? _value.replyToMessageId
          : replyToMessageId // ignore: cast_nullable_to_non_nullable
              as int?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      actor: freezed == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as String?,
      actorId: freezed == actorId
          ? _value.actorId
          : actorId // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      stickerEmoji: freezed == stickerEmoji
          ? _value.stickerEmoji
          : stickerEmoji // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      durationSeconds: freezed == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      forwardedFrom: freezed == forwardedFrom
          ? _value.forwardedFrom
          : forwardedFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceInformation: freezed == invoiceInformation
          ? _value.invoiceInformation
          : invoiceInformation // ignore: cast_nullable_to_non_nullable
              as String?,
      savedFrom: freezed == savedFrom
          ? _value.savedFrom
          : savedFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      contactInformation: freezed == contactInformation
          ? _value.contactInformation
          : contactInformation // ignore: cast_nullable_to_non_nullable
              as Contact?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String?,
      months: freezed == months
          ? _value.months
          : months // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res>? get contactInformation {
    if (_value.contactInformation == null) {
      return null;
    }

    return $ContactCopyWith<$Res>(_value.contactInformation!, (value) {
      return _then(_value.copyWith(contactInformation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$_MessageCopyWith(
          _$_Message value, $Res Function(_$_Message) then) =
      __$$_MessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String type,
      DateTime date,
      @JsonKey(name: "date_unixtime") String dateUnixtime,
      String? from,
      @JsonKey(name: "from_id") String? fromId,
      dynamic text,
      @JsonKey(name: "text_entities") List<TextEntities> textEntities,
      DateTime? edited,
      @JsonKey(name: "edited_unixtime") String? editedUnixtime,
      @JsonKey(name: "reply_to_message_id") int? replyToMessageId,
      String? photo,
      int? width,
      int? height,
      String? actor,
      @JsonKey(name: "actor_id") String? actorId,
      String? action,
      List<String>? members,
      String? file,
      String? thumbnail,
      @JsonKey(name: "media_type") String? mediaType,
      @JsonKey(name: "sticker_emoji") String? stickerEmoji,
      @JsonKey(name: "mime_type") String? mimeType,
      @JsonKey(name: "duration_seconds") int? durationSeconds,
      @JsonKey(name: "forwarded_from") String? forwardedFrom,
      @JsonKey(name: "invoice_information") String? invoiceInformation,
      @JsonKey(name: "saved_from") String? savedFrom,
      @JsonKey(name: "contact_information") Contact? contactInformation,
      @JsonKey(name: "message_id") int? messageId,
      String? cost,
      int? months,
      String? title});

  @override
  $ContactCopyWith<$Res>? get contactInformation;
}

/// @nodoc
class __$$_MessageCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$_Message>
    implements _$$_MessageCopyWith<$Res> {
  __$$_MessageCopyWithImpl(_$_Message _value, $Res Function(_$_Message) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? date = null,
    Object? dateUnixtime = null,
    Object? from = freezed,
    Object? fromId = freezed,
    Object? text = freezed,
    Object? textEntities = null,
    Object? edited = freezed,
    Object? editedUnixtime = freezed,
    Object? replyToMessageId = freezed,
    Object? photo = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? actor = freezed,
    Object? actorId = freezed,
    Object? action = freezed,
    Object? members = freezed,
    Object? file = freezed,
    Object? thumbnail = freezed,
    Object? mediaType = freezed,
    Object? stickerEmoji = freezed,
    Object? mimeType = freezed,
    Object? durationSeconds = freezed,
    Object? forwardedFrom = freezed,
    Object? invoiceInformation = freezed,
    Object? savedFrom = freezed,
    Object? contactInformation = freezed,
    Object? messageId = freezed,
    Object? cost = freezed,
    Object? months = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_Message(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateUnixtime: null == dateUnixtime
          ? _value.dateUnixtime
          : dateUnixtime // ignore: cast_nullable_to_non_nullable
              as String,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      fromId: freezed == fromId
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as dynamic,
      textEntities: null == textEntities
          ? _value._textEntities
          : textEntities // ignore: cast_nullable_to_non_nullable
              as List<TextEntities>,
      edited: freezed == edited
          ? _value.edited
          : edited // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      editedUnixtime: freezed == editedUnixtime
          ? _value.editedUnixtime
          : editedUnixtime // ignore: cast_nullable_to_non_nullable
              as String?,
      replyToMessageId: freezed == replyToMessageId
          ? _value.replyToMessageId
          : replyToMessageId // ignore: cast_nullable_to_non_nullable
              as int?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      actor: freezed == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as String?,
      actorId: freezed == actorId
          ? _value.actorId
          : actorId // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      members: freezed == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      stickerEmoji: freezed == stickerEmoji
          ? _value.stickerEmoji
          : stickerEmoji // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      durationSeconds: freezed == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      forwardedFrom: freezed == forwardedFrom
          ? _value.forwardedFrom
          : forwardedFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceInformation: freezed == invoiceInformation
          ? _value.invoiceInformation
          : invoiceInformation // ignore: cast_nullable_to_non_nullable
              as String?,
      savedFrom: freezed == savedFrom
          ? _value.savedFrom
          : savedFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      contactInformation: freezed == contactInformation
          ? _value.contactInformation
          : contactInformation // ignore: cast_nullable_to_non_nullable
              as Contact?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String?,
      months: freezed == months
          ? _value.months
          : months // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Message implements _Message {
  const _$_Message(
      {required this.id,
      required this.type,
      required this.date,
      @JsonKey(name: "date_unixtime") required this.dateUnixtime,
      this.from,
      @JsonKey(name: "from_id") this.fromId,
      required this.text,
      @JsonKey(name: "text_entities")
      required final List<TextEntities> textEntities,
      this.edited,
      @JsonKey(name: "edited_unixtime") this.editedUnixtime,
      @JsonKey(name: "reply_to_message_id") this.replyToMessageId,
      this.photo,
      this.width,
      this.height,
      this.actor,
      @JsonKey(name: "actor_id") this.actorId,
      this.action,
      final List<String>? members,
      this.file,
      this.thumbnail,
      @JsonKey(name: "media_type") this.mediaType,
      @JsonKey(name: "sticker_emoji") this.stickerEmoji,
      @JsonKey(name: "mime_type") this.mimeType,
      @JsonKey(name: "duration_seconds") this.durationSeconds,
      @JsonKey(name: "forwarded_from") this.forwardedFrom,
      @JsonKey(name: "invoice_information") this.invoiceInformation,
      @JsonKey(name: "saved_from") this.savedFrom,
      @JsonKey(name: "contact_information") this.contactInformation,
      @JsonKey(name: "message_id") this.messageId,
      this.cost,
      this.months,
      this.title})
      : _textEntities = textEntities,
        _members = members;

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$$_MessageFromJson(json);

  @override
  final int id;
  @override
  final String type;
  @override
  final DateTime date;
  @override
  @JsonKey(name: "date_unixtime")
  final String dateUnixtime;
  @override
  final String? from;
  @override
  @JsonKey(name: "from_id")
  final String? fromId;
  @override
  final dynamic text;
  final List<TextEntities> _textEntities;
  @override
  @JsonKey(name: "text_entities")
  List<TextEntities> get textEntities {
    if (_textEntities is EqualUnmodifiableListView) return _textEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_textEntities);
  }

  @override
  final DateTime? edited;
  @override
  @JsonKey(name: "edited_unixtime")
  final String? editedUnixtime;
  @override
  @JsonKey(name: "reply_to_message_id")
  final int? replyToMessageId;
  @override
  final String? photo;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final String? actor;
  @override
  @JsonKey(name: "actor_id")
  final String? actorId;
  @override
  final String? action;
  final List<String>? _members;
  @override
  List<String>? get members {
    final value = _members;
    if (value == null) return null;
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? file;
  @override
  final String? thumbnail;
  @override
  @JsonKey(name: "media_type")
  final String? mediaType;
  @override
  @JsonKey(name: "sticker_emoji")
  final String? stickerEmoji;
  @override
  @JsonKey(name: "mime_type")
  final String? mimeType;
  @override
  @JsonKey(name: "duration_seconds")
  final int? durationSeconds;
  @override
  @JsonKey(name: "forwarded_from")
  final String? forwardedFrom;
  @override
  @JsonKey(name: "invoice_information")
  final String? invoiceInformation;
  @override
  @JsonKey(name: "saved_from")
  final String? savedFrom;
  @override
  @JsonKey(name: "contact_information")
  final Contact? contactInformation;
  @override
  @JsonKey(name: "message_id")
  final int? messageId;
  @override
  final String? cost;
  @override
  final int? months;
  @override
  final String? title;

  @override
  String toString() {
    return 'Message(id: $id, type: $type, date: $date, dateUnixtime: $dateUnixtime, from: $from, fromId: $fromId, text: $text, textEntities: $textEntities, edited: $edited, editedUnixtime: $editedUnixtime, replyToMessageId: $replyToMessageId, photo: $photo, width: $width, height: $height, actor: $actor, actorId: $actorId, action: $action, members: $members, file: $file, thumbnail: $thumbnail, mediaType: $mediaType, stickerEmoji: $stickerEmoji, mimeType: $mimeType, durationSeconds: $durationSeconds, forwardedFrom: $forwardedFrom, invoiceInformation: $invoiceInformation, savedFrom: $savedFrom, contactInformation: $contactInformation, messageId: $messageId, cost: $cost, months: $months, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Message &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dateUnixtime, dateUnixtime) ||
                other.dateUnixtime == dateUnixtime) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.fromId, fromId) || other.fromId == fromId) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality()
                .equals(other._textEntities, _textEntities) &&
            (identical(other.edited, edited) || other.edited == edited) &&
            (identical(other.editedUnixtime, editedUnixtime) ||
                other.editedUnixtime == editedUnixtime) &&
            (identical(other.replyToMessageId, replyToMessageId) ||
                other.replyToMessageId == replyToMessageId) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.actor, actor) || other.actor == actor) &&
            (identical(other.actorId, actorId) || other.actorId == actorId) &&
            (identical(other.action, action) || other.action == action) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.stickerEmoji, stickerEmoji) ||
                other.stickerEmoji == stickerEmoji) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds) &&
            (identical(other.forwardedFrom, forwardedFrom) ||
                other.forwardedFrom == forwardedFrom) &&
            (identical(other.invoiceInformation, invoiceInformation) ||
                other.invoiceInformation == invoiceInformation) &&
            (identical(other.savedFrom, savedFrom) ||
                other.savedFrom == savedFrom) &&
            (identical(other.contactInformation, contactInformation) ||
                other.contactInformation == contactInformation) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.months, months) || other.months == months) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        type,
        date,
        dateUnixtime,
        from,
        fromId,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(_textEntities),
        edited,
        editedUnixtime,
        replyToMessageId,
        photo,
        width,
        height,
        actor,
        actorId,
        action,
        const DeepCollectionEquality().hash(_members),
        file,
        thumbnail,
        mediaType,
        stickerEmoji,
        mimeType,
        durationSeconds,
        forwardedFrom,
        invoiceInformation,
        savedFrom,
        contactInformation,
        messageId,
        cost,
        months,
        title
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      __$$_MessageCopyWithImpl<_$_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  const factory _Message(
      {required final int id,
      required final String type,
      required final DateTime date,
      @JsonKey(name: "date_unixtime") required final String dateUnixtime,
      final String? from,
      @JsonKey(name: "from_id") final String? fromId,
      required final dynamic text,
      @JsonKey(name: "text_entities")
      required final List<TextEntities> textEntities,
      final DateTime? edited,
      @JsonKey(name: "edited_unixtime") final String? editedUnixtime,
      @JsonKey(name: "reply_to_message_id") final int? replyToMessageId,
      final String? photo,
      final int? width,
      final int? height,
      final String? actor,
      @JsonKey(name: "actor_id") final String? actorId,
      final String? action,
      final List<String>? members,
      final String? file,
      final String? thumbnail,
      @JsonKey(name: "media_type") final String? mediaType,
      @JsonKey(name: "sticker_emoji") final String? stickerEmoji,
      @JsonKey(name: "mime_type") final String? mimeType,
      @JsonKey(name: "duration_seconds") final int? durationSeconds,
      @JsonKey(name: "forwarded_from") final String? forwardedFrom,
      @JsonKey(name: "invoice_information") final String? invoiceInformation,
      @JsonKey(name: "saved_from") final String? savedFrom,
      @JsonKey(name: "contact_information") final Contact? contactInformation,
      @JsonKey(name: "message_id") final int? messageId,
      final String? cost,
      final int? months,
      final String? title}) = _$_Message;

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  int get id;
  @override
  String get type;
  @override
  DateTime get date;
  @override
  @JsonKey(name: "date_unixtime")
  String get dateUnixtime;
  @override
  String? get from;
  @override
  @JsonKey(name: "from_id")
  String? get fromId;
  @override
  dynamic get text;
  @override
  @JsonKey(name: "text_entities")
  List<TextEntities> get textEntities;
  @override
  DateTime? get edited;
  @override
  @JsonKey(name: "edited_unixtime")
  String? get editedUnixtime;
  @override
  @JsonKey(name: "reply_to_message_id")
  int? get replyToMessageId;
  @override
  String? get photo;
  @override
  int? get width;
  @override
  int? get height;
  @override
  String? get actor;
  @override
  @JsonKey(name: "actor_id")
  String? get actorId;
  @override
  String? get action;
  @override
  List<String>? get members;
  @override
  String? get file;
  @override
  String? get thumbnail;
  @override
  @JsonKey(name: "media_type")
  String? get mediaType;
  @override
  @JsonKey(name: "sticker_emoji")
  String? get stickerEmoji;
  @override
  @JsonKey(name: "mime_type")
  String? get mimeType;
  @override
  @JsonKey(name: "duration_seconds")
  int? get durationSeconds;
  @override
  @JsonKey(name: "forwarded_from")
  String? get forwardedFrom;
  @override
  @JsonKey(name: "invoice_information")
  String? get invoiceInformation;
  @override
  @JsonKey(name: "saved_from")
  String? get savedFrom;
  @override
  @JsonKey(name: "contact_information")
  Contact? get contactInformation;
  @override
  @JsonKey(name: "message_id")
  int? get messageId;
  @override
  String? get cost;
  @override
  int? get months;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      throw _privateConstructorUsedError;
}

TextEntities _$TextEntitiesFromJson(Map<String, dynamic> json) {
  return _TextEntities.fromJson(json);
}

/// @nodoc
mixin _$TextEntities {
  String get type => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: "document_id")
  String? get documentId => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextEntitiesCopyWith<TextEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextEntitiesCopyWith<$Res> {
  factory $TextEntitiesCopyWith(
          TextEntities value, $Res Function(TextEntities) then) =
      _$TextEntitiesCopyWithImpl<$Res, TextEntities>;
  @useResult
  $Res call(
      {String type,
      String text,
      @JsonKey(name: "document_id") String? documentId,
      String? href,
      @JsonKey(name: "user_id") int? userId});
}

/// @nodoc
class _$TextEntitiesCopyWithImpl<$Res, $Val extends TextEntities>
    implements $TextEntitiesCopyWith<$Res> {
  _$TextEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? text = null,
    Object? documentId = freezed,
    Object? href = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      documentId: freezed == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TextEntitiesCopyWith<$Res>
    implements $TextEntitiesCopyWith<$Res> {
  factory _$$_TextEntitiesCopyWith(
          _$_TextEntities value, $Res Function(_$_TextEntities) then) =
      __$$_TextEntitiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String text,
      @JsonKey(name: "document_id") String? documentId,
      String? href,
      @JsonKey(name: "user_id") int? userId});
}

/// @nodoc
class __$$_TextEntitiesCopyWithImpl<$Res>
    extends _$TextEntitiesCopyWithImpl<$Res, _$_TextEntities>
    implements _$$_TextEntitiesCopyWith<$Res> {
  __$$_TextEntitiesCopyWithImpl(
      _$_TextEntities _value, $Res Function(_$_TextEntities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? text = null,
    Object? documentId = freezed,
    Object? href = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$_TextEntities(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      documentId: freezed == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TextEntities implements _TextEntities {
  const _$_TextEntities(
      {required this.type,
      required this.text,
      @JsonKey(name: "document_id") this.documentId,
      this.href,
      @JsonKey(name: "user_id") this.userId});

  factory _$_TextEntities.fromJson(Map<String, dynamic> json) =>
      _$$_TextEntitiesFromJson(json);

  @override
  final String type;
  @override
  final String text;
  @override
  @JsonKey(name: "document_id")
  final String? documentId;
  @override
  final String? href;
  @override
  @JsonKey(name: "user_id")
  final int? userId;

  @override
  String toString() {
    return 'TextEntities(type: $type, text: $text, documentId: $documentId, href: $href, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextEntities &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, text, documentId, href, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TextEntitiesCopyWith<_$_TextEntities> get copyWith =>
      __$$_TextEntitiesCopyWithImpl<_$_TextEntities>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TextEntitiesToJson(
      this,
    );
  }
}

abstract class _TextEntities implements TextEntities {
  const factory _TextEntities(
      {required final String type,
      required final String text,
      @JsonKey(name: "document_id") final String? documentId,
      final String? href,
      @JsonKey(name: "user_id") final int? userId}) = _$_TextEntities;

  factory _TextEntities.fromJson(Map<String, dynamic> json) =
      _$_TextEntities.fromJson;

  @override
  String get type;
  @override
  String get text;
  @override
  @JsonKey(name: "document_id")
  String? get documentId;
  @override
  String? get href;
  @override
  @JsonKey(name: "user_id")
  int? get userId;
  @override
  @JsonKey(ignore: true)
  _$$_TextEntitiesCopyWith<_$_TextEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

Contact _$ContactFromJson(Map<String, dynamic> json) {
  return _Contact.fromJson(json);
}

/// @nodoc
mixin _$Contact {
  @JsonKey(name: "first_name")
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "date_unixtime")
  String? get dateUnixtime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactCopyWith<Contact> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactCopyWith<$Res> {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) then) =
      _$ContactCopyWithImpl<$Res, Contact>;
  @useResult
  $Res call(
      {@JsonKey(name: "first_name") String firstName,
      @JsonKey(name: "last_name") String lastName,
      @JsonKey(name: "phone_number") String phoneNumber,
      DateTime? date,
      @JsonKey(name: "date_unixtime") String? dateUnixtime});
}

/// @nodoc
class _$ContactCopyWithImpl<$Res, $Val extends Contact>
    implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? date = freezed,
    Object? dateUnixtime = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateUnixtime: freezed == dateUnixtime
          ? _value.dateUnixtime
          : dateUnixtime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$$_ContactCopyWith(
          _$_Contact value, $Res Function(_$_Contact) then) =
      __$$_ContactCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "first_name") String firstName,
      @JsonKey(name: "last_name") String lastName,
      @JsonKey(name: "phone_number") String phoneNumber,
      DateTime? date,
      @JsonKey(name: "date_unixtime") String? dateUnixtime});
}

/// @nodoc
class __$$_ContactCopyWithImpl<$Res>
    extends _$ContactCopyWithImpl<$Res, _$_Contact>
    implements _$$_ContactCopyWith<$Res> {
  __$$_ContactCopyWithImpl(_$_Contact _value, $Res Function(_$_Contact) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? date = freezed,
    Object? dateUnixtime = freezed,
  }) {
    return _then(_$_Contact(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateUnixtime: freezed == dateUnixtime
          ? _value.dateUnixtime
          : dateUnixtime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Contact implements _Contact {
  const _$_Contact(
      {@JsonKey(name: "first_name") required this.firstName,
      @JsonKey(name: "last_name") required this.lastName,
      @JsonKey(name: "phone_number") required this.phoneNumber,
      this.date,
      @JsonKey(name: "date_unixtime") this.dateUnixtime});

  factory _$_Contact.fromJson(Map<String, dynamic> json) =>
      _$$_ContactFromJson(json);

  @override
  @JsonKey(name: "first_name")
  final String firstName;
  @override
  @JsonKey(name: "last_name")
  final String lastName;
  @override
  @JsonKey(name: "phone_number")
  final String phoneNumber;
  @override
  final DateTime? date;
  @override
  @JsonKey(name: "date_unixtime")
  final String? dateUnixtime;

  @override
  String toString() {
    return 'Contact(firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, date: $date, dateUnixtime: $dateUnixtime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Contact &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dateUnixtime, dateUnixtime) ||
                other.dateUnixtime == dateUnixtime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstName, lastName, phoneNumber, date, dateUnixtime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactCopyWith<_$_Contact> get copyWith =>
      __$$_ContactCopyWithImpl<_$_Contact>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactToJson(
      this,
    );
  }
}

abstract class _Contact implements Contact {
  const factory _Contact(
      {@JsonKey(name: "first_name") required final String firstName,
      @JsonKey(name: "last_name") required final String lastName,
      @JsonKey(name: "phone_number") required final String phoneNumber,
      final DateTime? date,
      @JsonKey(name: "date_unixtime") final String? dateUnixtime}) = _$_Contact;

  factory _Contact.fromJson(Map<String, dynamic> json) = _$_Contact.fromJson;

  @override
  @JsonKey(name: "first_name")
  String get firstName;
  @override
  @JsonKey(name: "last_name")
  String get lastName;
  @override
  @JsonKey(name: "phone_number")
  String get phoneNumber;
  @override
  DateTime? get date;
  @override
  @JsonKey(name: "date_unixtime")
  String? get dateUnixtime;
  @override
  @JsonKey(ignore: true)
  _$$_ContactCopyWith<_$_Contact> get copyWith =>
      throw _privateConstructorUsedError;
}

OtherData _$OtherDataFromJson(Map<String, dynamic> json) {
  return _OtherData.fromJson(json);
}

/// @nodoc
mixin _$OtherData {
  @JsonKey(name: "about_meta")
  String get aboutMeta => throw _privateConstructorUsedError;
  @JsonKey(name: "changes_log")
  List<dynamic> get changesLog => throw _privateConstructorUsedError;
  @JsonKey(name: "help")
  String get help => throw _privateConstructorUsedError;
  @JsonKey(name: "installed_stickers")
  List<InstalledSticker> get installedStickers =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "ips")
  List<Ip> get ips => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtherDataCopyWith<OtherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherDataCopyWith<$Res> {
  factory $OtherDataCopyWith(OtherData value, $Res Function(OtherData) then) =
      _$OtherDataCopyWithImpl<$Res, OtherData>;
  @useResult
  $Res call(
      {@JsonKey(name: "about_meta") String aboutMeta,
      @JsonKey(name: "changes_log") List<dynamic> changesLog,
      @JsonKey(name: "help") String help,
      @JsonKey(name: "installed_stickers")
      List<InstalledSticker> installedStickers,
      @JsonKey(name: "ips") List<Ip> ips});
}

/// @nodoc
class _$OtherDataCopyWithImpl<$Res, $Val extends OtherData>
    implements $OtherDataCopyWith<$Res> {
  _$OtherDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aboutMeta = null,
    Object? changesLog = null,
    Object? help = null,
    Object? installedStickers = null,
    Object? ips = null,
  }) {
    return _then(_value.copyWith(
      aboutMeta: null == aboutMeta
          ? _value.aboutMeta
          : aboutMeta // ignore: cast_nullable_to_non_nullable
              as String,
      changesLog: null == changesLog
          ? _value.changesLog
          : changesLog // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      help: null == help
          ? _value.help
          : help // ignore: cast_nullable_to_non_nullable
              as String,
      installedStickers: null == installedStickers
          ? _value.installedStickers
          : installedStickers // ignore: cast_nullable_to_non_nullable
              as List<InstalledSticker>,
      ips: null == ips
          ? _value.ips
          : ips // ignore: cast_nullable_to_non_nullable
              as List<Ip>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OtherDataCopyWith<$Res> implements $OtherDataCopyWith<$Res> {
  factory _$$_OtherDataCopyWith(
          _$_OtherData value, $Res Function(_$_OtherData) then) =
      __$$_OtherDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "about_meta") String aboutMeta,
      @JsonKey(name: "changes_log") List<dynamic> changesLog,
      @JsonKey(name: "help") String help,
      @JsonKey(name: "installed_stickers")
      List<InstalledSticker> installedStickers,
      @JsonKey(name: "ips") List<Ip> ips});
}

/// @nodoc
class __$$_OtherDataCopyWithImpl<$Res>
    extends _$OtherDataCopyWithImpl<$Res, _$_OtherData>
    implements _$$_OtherDataCopyWith<$Res> {
  __$$_OtherDataCopyWithImpl(
      _$_OtherData _value, $Res Function(_$_OtherData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aboutMeta = null,
    Object? changesLog = null,
    Object? help = null,
    Object? installedStickers = null,
    Object? ips = null,
  }) {
    return _then(_$_OtherData(
      aboutMeta: null == aboutMeta
          ? _value.aboutMeta
          : aboutMeta // ignore: cast_nullable_to_non_nullable
              as String,
      changesLog: null == changesLog
          ? _value._changesLog
          : changesLog // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      help: null == help
          ? _value.help
          : help // ignore: cast_nullable_to_non_nullable
              as String,
      installedStickers: null == installedStickers
          ? _value._installedStickers
          : installedStickers // ignore: cast_nullable_to_non_nullable
              as List<InstalledSticker>,
      ips: null == ips
          ? _value._ips
          : ips // ignore: cast_nullable_to_non_nullable
              as List<Ip>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OtherData implements _OtherData {
  const _$_OtherData(
      {@JsonKey(name: "about_meta") required this.aboutMeta,
      @JsonKey(name: "changes_log") required final List<dynamic> changesLog,
      @JsonKey(name: "help") required this.help,
      @JsonKey(name: "installed_stickers")
      required final List<InstalledSticker> installedStickers,
      @JsonKey(name: "ips") required final List<Ip> ips})
      : _changesLog = changesLog,
        _installedStickers = installedStickers,
        _ips = ips;

  factory _$_OtherData.fromJson(Map<String, dynamic> json) =>
      _$$_OtherDataFromJson(json);

  @override
  @JsonKey(name: "about_meta")
  final String aboutMeta;
  final List<dynamic> _changesLog;
  @override
  @JsonKey(name: "changes_log")
  List<dynamic> get changesLog {
    if (_changesLog is EqualUnmodifiableListView) return _changesLog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_changesLog);
  }

  @override
  @JsonKey(name: "help")
  final String help;
  final List<InstalledSticker> _installedStickers;
  @override
  @JsonKey(name: "installed_stickers")
  List<InstalledSticker> get installedStickers {
    if (_installedStickers is EqualUnmodifiableListView)
      return _installedStickers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_installedStickers);
  }

  final List<Ip> _ips;
  @override
  @JsonKey(name: "ips")
  List<Ip> get ips {
    if (_ips is EqualUnmodifiableListView) return _ips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ips);
  }

  @override
  String toString() {
    return 'OtherData(aboutMeta: $aboutMeta, changesLog: $changesLog, help: $help, installedStickers: $installedStickers, ips: $ips)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtherData &&
            (identical(other.aboutMeta, aboutMeta) ||
                other.aboutMeta == aboutMeta) &&
            const DeepCollectionEquality()
                .equals(other._changesLog, _changesLog) &&
            (identical(other.help, help) || other.help == help) &&
            const DeepCollectionEquality()
                .equals(other._installedStickers, _installedStickers) &&
            const DeepCollectionEquality().equals(other._ips, _ips));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      aboutMeta,
      const DeepCollectionEquality().hash(_changesLog),
      help,
      const DeepCollectionEquality().hash(_installedStickers),
      const DeepCollectionEquality().hash(_ips));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtherDataCopyWith<_$_OtherData> get copyWith =>
      __$$_OtherDataCopyWithImpl<_$_OtherData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OtherDataToJson(
      this,
    );
  }
}

abstract class _OtherData implements OtherData {
  const factory _OtherData(
      {@JsonKey(name: "about_meta") required final String aboutMeta,
      @JsonKey(name: "changes_log") required final List<dynamic> changesLog,
      @JsonKey(name: "help") required final String help,
      @JsonKey(name: "installed_stickers")
      required final List<InstalledSticker> installedStickers,
      @JsonKey(name: "ips") required final List<Ip> ips}) = _$_OtherData;

  factory _OtherData.fromJson(Map<String, dynamic> json) =
      _$_OtherData.fromJson;

  @override
  @JsonKey(name: "about_meta")
  String get aboutMeta;
  @override
  @JsonKey(name: "changes_log")
  List<dynamic> get changesLog;
  @override
  @JsonKey(name: "help")
  String get help;
  @override
  @JsonKey(name: "installed_stickers")
  List<InstalledSticker> get installedStickers;
  @override
  @JsonKey(name: "ips")
  List<Ip> get ips;
  @override
  @JsonKey(ignore: true)
  _$$_OtherDataCopyWith<_$_OtherData> get copyWith =>
      throw _privateConstructorUsedError;
}

PersonalInformation _$PersonalInformationFromJson(Map<String, dynamic> json) {
  return _PersonalInformation.fromJson(json);
}

/// @nodoc
mixin _$PersonalInformation {
  @JsonKey(name: "user_id")
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: "bio")
  String get bio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonalInformationCopyWith<PersonalInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalInformationCopyWith<$Res> {
  factory $PersonalInformationCopyWith(
          PersonalInformation value, $Res Function(PersonalInformation) then) =
      _$PersonalInformationCopyWithImpl<$Res, PersonalInformation>;
  @useResult
  $Res call(
      {@JsonKey(name: "user_id") int userId,
      @JsonKey(name: "first_name") String firstName,
      @JsonKey(name: "last_name") String lastName,
      @JsonKey(name: "phone_number") String phoneNumber,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "bio") String bio});
}

/// @nodoc
class _$PersonalInformationCopyWithImpl<$Res, $Val extends PersonalInformation>
    implements $PersonalInformationCopyWith<$Res> {
  _$PersonalInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? username = null,
    Object? bio = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersonalInformationCopyWith<$Res>
    implements $PersonalInformationCopyWith<$Res> {
  factory _$$_PersonalInformationCopyWith(_$_PersonalInformation value,
          $Res Function(_$_PersonalInformation) then) =
      __$$_PersonalInformationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "user_id") int userId,
      @JsonKey(name: "first_name") String firstName,
      @JsonKey(name: "last_name") String lastName,
      @JsonKey(name: "phone_number") String phoneNumber,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "bio") String bio});
}

/// @nodoc
class __$$_PersonalInformationCopyWithImpl<$Res>
    extends _$PersonalInformationCopyWithImpl<$Res, _$_PersonalInformation>
    implements _$$_PersonalInformationCopyWith<$Res> {
  __$$_PersonalInformationCopyWithImpl(_$_PersonalInformation _value,
      $Res Function(_$_PersonalInformation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? username = null,
    Object? bio = null,
  }) {
    return _then(_$_PersonalInformation(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonalInformation implements _PersonalInformation {
  const _$_PersonalInformation(
      {@JsonKey(name: "user_id") required this.userId,
      @JsonKey(name: "first_name") required this.firstName,
      @JsonKey(name: "last_name") required this.lastName,
      @JsonKey(name: "phone_number") required this.phoneNumber,
      @JsonKey(name: "username") required this.username,
      @JsonKey(name: "bio") required this.bio});

  factory _$_PersonalInformation.fromJson(Map<String, dynamic> json) =>
      _$$_PersonalInformationFromJson(json);

  @override
  @JsonKey(name: "user_id")
  final int userId;
  @override
  @JsonKey(name: "first_name")
  final String firstName;
  @override
  @JsonKey(name: "last_name")
  final String lastName;
  @override
  @JsonKey(name: "phone_number")
  final String phoneNumber;
  @override
  @JsonKey(name: "username")
  final String username;
  @override
  @JsonKey(name: "bio")
  final String bio;

  @override
  String toString() {
    return 'PersonalInformation(userId: $userId, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, username: $username, bio: $bio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonalInformation &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.bio, bio) || other.bio == bio));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, firstName, lastName, phoneNumber, username, bio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonalInformationCopyWith<_$_PersonalInformation> get copyWith =>
      __$$_PersonalInformationCopyWithImpl<_$_PersonalInformation>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonalInformationToJson(
      this,
    );
  }
}

abstract class _PersonalInformation implements PersonalInformation {
  const factory _PersonalInformation(
          {@JsonKey(name: "user_id") required final int userId,
          @JsonKey(name: "first_name") required final String firstName,
          @JsonKey(name: "last_name") required final String lastName,
          @JsonKey(name: "phone_number") required final String phoneNumber,
          @JsonKey(name: "username") required final String username,
          @JsonKey(name: "bio") required final String bio}) =
      _$_PersonalInformation;

  factory _PersonalInformation.fromJson(Map<String, dynamic> json) =
      _$_PersonalInformation.fromJson;

  @override
  @JsonKey(name: "user_id")
  int get userId;
  @override
  @JsonKey(name: "first_name")
  String get firstName;
  @override
  @JsonKey(name: "last_name")
  String get lastName;
  @override
  @JsonKey(name: "phone_number")
  String get phoneNumber;
  @override
  @JsonKey(name: "username")
  String get username;
  @override
  @JsonKey(name: "bio")
  String get bio;
  @override
  @JsonKey(ignore: true)
  _$$_PersonalInformationCopyWith<_$_PersonalInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfilePicture _$ProfilePictureFromJson(Map<String, dynamic> json) {
  return _ProfilePicture.fromJson(json);
}

/// @nodoc
mixin _$ProfilePicture {
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: "date_unixtime")
  String get dateUnixtime => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfilePictureCopyWith<ProfilePicture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilePictureCopyWith<$Res> {
  factory $ProfilePictureCopyWith(
          ProfilePicture value, $Res Function(ProfilePicture) then) =
      _$ProfilePictureCopyWithImpl<$Res, ProfilePicture>;
  @useResult
  $Res call(
      {DateTime date,
      @JsonKey(name: "date_unixtime") String dateUnixtime,
      String photo});
}

/// @nodoc
class _$ProfilePictureCopyWithImpl<$Res, $Val extends ProfilePicture>
    implements $ProfilePictureCopyWith<$Res> {
  _$ProfilePictureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? dateUnixtime = null,
    Object? photo = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateUnixtime: null == dateUnixtime
          ? _value.dateUnixtime
          : dateUnixtime // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfilePictureCopyWith<$Res>
    implements $ProfilePictureCopyWith<$Res> {
  factory _$$_ProfilePictureCopyWith(
          _$_ProfilePicture value, $Res Function(_$_ProfilePicture) then) =
      __$$_ProfilePictureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      @JsonKey(name: "date_unixtime") String dateUnixtime,
      String photo});
}

/// @nodoc
class __$$_ProfilePictureCopyWithImpl<$Res>
    extends _$ProfilePictureCopyWithImpl<$Res, _$_ProfilePicture>
    implements _$$_ProfilePictureCopyWith<$Res> {
  __$$_ProfilePictureCopyWithImpl(
      _$_ProfilePicture _value, $Res Function(_$_ProfilePicture) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? dateUnixtime = null,
    Object? photo = null,
  }) {
    return _then(_$_ProfilePicture(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateUnixtime: null == dateUnixtime
          ? _value.dateUnixtime
          : dateUnixtime // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfilePicture implements _ProfilePicture {
  const _$_ProfilePicture(
      {required this.date,
      @JsonKey(name: "date_unixtime") required this.dateUnixtime,
      required this.photo});

  factory _$_ProfilePicture.fromJson(Map<String, dynamic> json) =>
      _$$_ProfilePictureFromJson(json);

  @override
  final DateTime date;
  @override
  @JsonKey(name: "date_unixtime")
  final String dateUnixtime;
  @override
  final String photo;

  @override
  String toString() {
    return 'ProfilePicture(date: $date, dateUnixtime: $dateUnixtime, photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfilePicture &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dateUnixtime, dateUnixtime) ||
                other.dateUnixtime == dateUnixtime) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, dateUnixtime, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfilePictureCopyWith<_$_ProfilePicture> get copyWith =>
      __$$_ProfilePictureCopyWithImpl<_$_ProfilePicture>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfilePictureToJson(
      this,
    );
  }
}

abstract class _ProfilePicture implements ProfilePicture {
  const factory _ProfilePicture(
      {required final DateTime date,
      @JsonKey(name: "date_unixtime") required final String dateUnixtime,
      required final String photo}) = _$_ProfilePicture;

  factory _ProfilePicture.fromJson(Map<String, dynamic> json) =
      _$_ProfilePicture.fromJson;

  @override
  DateTime get date;
  @override
  @JsonKey(name: "date_unixtime")
  String get dateUnixtime;
  @override
  String get photo;
  @override
  @JsonKey(ignore: true)
  _$$_ProfilePictureCopyWith<_$_ProfilePicture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ListWithAbout<T> {
  String get about => throw _privateConstructorUsedError;
  List<T> get list => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListWithAboutCopyWith<T, ListWithAbout<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListWithAboutCopyWith<T, $Res> {
  factory $ListWithAboutCopyWith(
          ListWithAbout<T> value, $Res Function(ListWithAbout<T>) then) =
      _$ListWithAboutCopyWithImpl<T, $Res, ListWithAbout<T>>;
  @useResult
  $Res call({String about, List<T> list});
}

/// @nodoc
class _$ListWithAboutCopyWithImpl<T, $Res, $Val extends ListWithAbout<T>>
    implements $ListWithAboutCopyWith<T, $Res> {
  _$ListWithAboutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? about = null,
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListWithAboutCopyWith<T, $Res>
    implements $ListWithAboutCopyWith<T, $Res> {
  factory _$$_ListWithAboutCopyWith(
          _$_ListWithAbout<T> value, $Res Function(_$_ListWithAbout<T>) then) =
      __$$_ListWithAboutCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String about, List<T> list});
}

/// @nodoc
class __$$_ListWithAboutCopyWithImpl<T, $Res>
    extends _$ListWithAboutCopyWithImpl<T, $Res, _$_ListWithAbout<T>>
    implements _$$_ListWithAboutCopyWith<T, $Res> {
  __$$_ListWithAboutCopyWithImpl(
      _$_ListWithAbout<T> _value, $Res Function(_$_ListWithAbout<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? about = null,
    Object? list = null,
  }) {
    return _then(_$_ListWithAbout<T>(
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$_ListWithAbout<T> implements _ListWithAbout<T> {
  const _$_ListWithAbout({required this.about, required final List<T> list})
      : _list = list;

  @override
  final String about;
  final List<T> _list;
  @override
  List<T> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'ListWithAbout<$T>(about: $about, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListWithAbout<T> &&
            (identical(other.about, about) || other.about == about) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, about, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListWithAboutCopyWith<T, _$_ListWithAbout<T>> get copyWith =>
      __$$_ListWithAboutCopyWithImpl<T, _$_ListWithAbout<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object Function(T value) toJsonT) {
    return {
      'about': about,
      'list': list.map((item) => toJsonT(item)).toList(),
    };
  }
}

abstract class _ListWithAbout<T> implements ListWithAbout<T> {
  const factory _ListWithAbout(
      {required final String about,
      required final List<T> list}) = _$_ListWithAbout<T>;

  @override
  String get about;
  @override
  List<T> get list;
  @override
  @JsonKey(ignore: true)
  _$$_ListWithAboutCopyWith<T, _$_ListWithAbout<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

Session _$SessionFromJson(Map<String, dynamic> json) {
  return _Session.fromJson(json);
}

/// @nodoc
mixin _$Session {
  @JsonKey(name: "last_active")
  DateTime get lastActive => throw _privateConstructorUsedError;
  @JsonKey(name: "last_active_unixtime")
  String get lastActiveUnixtime => throw _privateConstructorUsedError;
  @JsonKey(name: "last_ip")
  String get lastIp => throw _privateConstructorUsedError;
  @JsonKey(name: "last_country")
  String get lastCountry => throw _privateConstructorUsedError;
  @JsonKey(name: "last_region")
  String get lastRegion => throw _privateConstructorUsedError;
  @JsonKey(name: "application_name")
  String get applicationName => throw _privateConstructorUsedError;
  @JsonKey(name: "application_version")
  String get applicationVersion => throw _privateConstructorUsedError;
  @JsonKey(name: "device_model")
  String get deviceModel => throw _privateConstructorUsedError;
  @JsonKey(name: "platform")
  String get platform => throw _privateConstructorUsedError;
  @JsonKey(name: "system_version")
  String get systemVersion => throw _privateConstructorUsedError;
  @JsonKey(name: "created")
  DateTime get created => throw _privateConstructorUsedError;
  @JsonKey(name: "created_unixtime")
  String get createdUnixtime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionCopyWith<Session> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res, Session>;
  @useResult
  $Res call(
      {@JsonKey(name: "last_active") DateTime lastActive,
      @JsonKey(name: "last_active_unixtime") String lastActiveUnixtime,
      @JsonKey(name: "last_ip") String lastIp,
      @JsonKey(name: "last_country") String lastCountry,
      @JsonKey(name: "last_region") String lastRegion,
      @JsonKey(name: "application_name") String applicationName,
      @JsonKey(name: "application_version") String applicationVersion,
      @JsonKey(name: "device_model") String deviceModel,
      @JsonKey(name: "platform") String platform,
      @JsonKey(name: "system_version") String systemVersion,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "created_unixtime") String createdUnixtime});
}

/// @nodoc
class _$SessionCopyWithImpl<$Res, $Val extends Session>
    implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastActive = null,
    Object? lastActiveUnixtime = null,
    Object? lastIp = null,
    Object? lastCountry = null,
    Object? lastRegion = null,
    Object? applicationName = null,
    Object? applicationVersion = null,
    Object? deviceModel = null,
    Object? platform = null,
    Object? systemVersion = null,
    Object? created = null,
    Object? createdUnixtime = null,
  }) {
    return _then(_value.copyWith(
      lastActive: null == lastActive
          ? _value.lastActive
          : lastActive // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastActiveUnixtime: null == lastActiveUnixtime
          ? _value.lastActiveUnixtime
          : lastActiveUnixtime // ignore: cast_nullable_to_non_nullable
              as String,
      lastIp: null == lastIp
          ? _value.lastIp
          : lastIp // ignore: cast_nullable_to_non_nullable
              as String,
      lastCountry: null == lastCountry
          ? _value.lastCountry
          : lastCountry // ignore: cast_nullable_to_non_nullable
              as String,
      lastRegion: null == lastRegion
          ? _value.lastRegion
          : lastRegion // ignore: cast_nullable_to_non_nullable
              as String,
      applicationName: null == applicationName
          ? _value.applicationName
          : applicationName // ignore: cast_nullable_to_non_nullable
              as String,
      applicationVersion: null == applicationVersion
          ? _value.applicationVersion
          : applicationVersion // ignore: cast_nullable_to_non_nullable
              as String,
      deviceModel: null == deviceModel
          ? _value.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      systemVersion: null == systemVersion
          ? _value.systemVersion
          : systemVersion // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdUnixtime: null == createdUnixtime
          ? _value.createdUnixtime
          : createdUnixtime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SessionCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$$_SessionCopyWith(
          _$_Session value, $Res Function(_$_Session) then) =
      __$$_SessionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "last_active") DateTime lastActive,
      @JsonKey(name: "last_active_unixtime") String lastActiveUnixtime,
      @JsonKey(name: "last_ip") String lastIp,
      @JsonKey(name: "last_country") String lastCountry,
      @JsonKey(name: "last_region") String lastRegion,
      @JsonKey(name: "application_name") String applicationName,
      @JsonKey(name: "application_version") String applicationVersion,
      @JsonKey(name: "device_model") String deviceModel,
      @JsonKey(name: "platform") String platform,
      @JsonKey(name: "system_version") String systemVersion,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "created_unixtime") String createdUnixtime});
}

/// @nodoc
class __$$_SessionCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$_Session>
    implements _$$_SessionCopyWith<$Res> {
  __$$_SessionCopyWithImpl(_$_Session _value, $Res Function(_$_Session) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastActive = null,
    Object? lastActiveUnixtime = null,
    Object? lastIp = null,
    Object? lastCountry = null,
    Object? lastRegion = null,
    Object? applicationName = null,
    Object? applicationVersion = null,
    Object? deviceModel = null,
    Object? platform = null,
    Object? systemVersion = null,
    Object? created = null,
    Object? createdUnixtime = null,
  }) {
    return _then(_$_Session(
      lastActive: null == lastActive
          ? _value.lastActive
          : lastActive // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastActiveUnixtime: null == lastActiveUnixtime
          ? _value.lastActiveUnixtime
          : lastActiveUnixtime // ignore: cast_nullable_to_non_nullable
              as String,
      lastIp: null == lastIp
          ? _value.lastIp
          : lastIp // ignore: cast_nullable_to_non_nullable
              as String,
      lastCountry: null == lastCountry
          ? _value.lastCountry
          : lastCountry // ignore: cast_nullable_to_non_nullable
              as String,
      lastRegion: null == lastRegion
          ? _value.lastRegion
          : lastRegion // ignore: cast_nullable_to_non_nullable
              as String,
      applicationName: null == applicationName
          ? _value.applicationName
          : applicationName // ignore: cast_nullable_to_non_nullable
              as String,
      applicationVersion: null == applicationVersion
          ? _value.applicationVersion
          : applicationVersion // ignore: cast_nullable_to_non_nullable
              as String,
      deviceModel: null == deviceModel
          ? _value.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      systemVersion: null == systemVersion
          ? _value.systemVersion
          : systemVersion // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdUnixtime: null == createdUnixtime
          ? _value.createdUnixtime
          : createdUnixtime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Session implements _Session {
  const _$_Session(
      {@JsonKey(name: "last_active") required this.lastActive,
      @JsonKey(name: "last_active_unixtime") required this.lastActiveUnixtime,
      @JsonKey(name: "last_ip") required this.lastIp,
      @JsonKey(name: "last_country") required this.lastCountry,
      @JsonKey(name: "last_region") required this.lastRegion,
      @JsonKey(name: "application_name") required this.applicationName,
      @JsonKey(name: "application_version") required this.applicationVersion,
      @JsonKey(name: "device_model") required this.deviceModel,
      @JsonKey(name: "platform") required this.platform,
      @JsonKey(name: "system_version") required this.systemVersion,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "created_unixtime") required this.createdUnixtime});

  factory _$_Session.fromJson(Map<String, dynamic> json) =>
      _$$_SessionFromJson(json);

  @override
  @JsonKey(name: "last_active")
  final DateTime lastActive;
  @override
  @JsonKey(name: "last_active_unixtime")
  final String lastActiveUnixtime;
  @override
  @JsonKey(name: "last_ip")
  final String lastIp;
  @override
  @JsonKey(name: "last_country")
  final String lastCountry;
  @override
  @JsonKey(name: "last_region")
  final String lastRegion;
  @override
  @JsonKey(name: "application_name")
  final String applicationName;
  @override
  @JsonKey(name: "application_version")
  final String applicationVersion;
  @override
  @JsonKey(name: "device_model")
  final String deviceModel;
  @override
  @JsonKey(name: "platform")
  final String platform;
  @override
  @JsonKey(name: "system_version")
  final String systemVersion;
  @override
  @JsonKey(name: "created")
  final DateTime created;
  @override
  @JsonKey(name: "created_unixtime")
  final String createdUnixtime;

  @override
  String toString() {
    return 'Session(lastActive: $lastActive, lastActiveUnixtime: $lastActiveUnixtime, lastIp: $lastIp, lastCountry: $lastCountry, lastRegion: $lastRegion, applicationName: $applicationName, applicationVersion: $applicationVersion, deviceModel: $deviceModel, platform: $platform, systemVersion: $systemVersion, created: $created, createdUnixtime: $createdUnixtime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Session &&
            (identical(other.lastActive, lastActive) ||
                other.lastActive == lastActive) &&
            (identical(other.lastActiveUnixtime, lastActiveUnixtime) ||
                other.lastActiveUnixtime == lastActiveUnixtime) &&
            (identical(other.lastIp, lastIp) || other.lastIp == lastIp) &&
            (identical(other.lastCountry, lastCountry) ||
                other.lastCountry == lastCountry) &&
            (identical(other.lastRegion, lastRegion) ||
                other.lastRegion == lastRegion) &&
            (identical(other.applicationName, applicationName) ||
                other.applicationName == applicationName) &&
            (identical(other.applicationVersion, applicationVersion) ||
                other.applicationVersion == applicationVersion) &&
            (identical(other.deviceModel, deviceModel) ||
                other.deviceModel == deviceModel) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.systemVersion, systemVersion) ||
                other.systemVersion == systemVersion) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.createdUnixtime, createdUnixtime) ||
                other.createdUnixtime == createdUnixtime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lastActive,
      lastActiveUnixtime,
      lastIp,
      lastCountry,
      lastRegion,
      applicationName,
      applicationVersion,
      deviceModel,
      platform,
      systemVersion,
      created,
      createdUnixtime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SessionCopyWith<_$_Session> get copyWith =>
      __$$_SessionCopyWithImpl<_$_Session>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SessionToJson(
      this,
    );
  }
}

abstract class _Session implements Session {
  const factory _Session(
      {@JsonKey(name: "last_active") required final DateTime lastActive,
      @JsonKey(name: "last_active_unixtime")
      required final String lastActiveUnixtime,
      @JsonKey(name: "last_ip") required final String lastIp,
      @JsonKey(name: "last_country") required final String lastCountry,
      @JsonKey(name: "last_region") required final String lastRegion,
      @JsonKey(name: "application_name") required final String applicationName,
      @JsonKey(name: "application_version")
      required final String applicationVersion,
      @JsonKey(name: "device_model") required final String deviceModel,
      @JsonKey(name: "platform") required final String platform,
      @JsonKey(name: "system_version") required final String systemVersion,
      @JsonKey(name: "created") required final DateTime created,
      @JsonKey(name: "created_unixtime")
      required final String createdUnixtime}) = _$_Session;

  factory _Session.fromJson(Map<String, dynamic> json) = _$_Session.fromJson;

  @override
  @JsonKey(name: "last_active")
  DateTime get lastActive;
  @override
  @JsonKey(name: "last_active_unixtime")
  String get lastActiveUnixtime;
  @override
  @JsonKey(name: "last_ip")
  String get lastIp;
  @override
  @JsonKey(name: "last_country")
  String get lastCountry;
  @override
  @JsonKey(name: "last_region")
  String get lastRegion;
  @override
  @JsonKey(name: "application_name")
  String get applicationName;
  @override
  @JsonKey(name: "application_version")
  String get applicationVersion;
  @override
  @JsonKey(name: "device_model")
  String get deviceModel;
  @override
  @JsonKey(name: "platform")
  String get platform;
  @override
  @JsonKey(name: "system_version")
  String get systemVersion;
  @override
  @JsonKey(name: "created")
  DateTime get created;
  @override
  @JsonKey(name: "created_unixtime")
  String get createdUnixtime;
  @override
  @JsonKey(ignore: true)
  _$$_SessionCopyWith<_$_Session> get copyWith =>
      throw _privateConstructorUsedError;
}

FrequentContact _$FrequentContactFromJson(Map<String, dynamic> json) {
  return _FrequentContact.fromJson(json);
}

/// @nodoc
mixin _$FrequentContact {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "category")
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  double get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FrequentContactCopyWith<FrequentContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FrequentContactCopyWith<$Res> {
  factory $FrequentContactCopyWith(
          FrequentContact value, $Res Function(FrequentContact) then) =
      _$FrequentContactCopyWithImpl<$Res, FrequentContact>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "category") String category,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "rating") double rating});
}

/// @nodoc
class _$FrequentContactCopyWithImpl<$Res, $Val extends FrequentContact>
    implements $FrequentContactCopyWith<$Res> {
  _$FrequentContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? type = null,
    Object? name = null,
    Object? rating = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FrequentContactCopyWith<$Res>
    implements $FrequentContactCopyWith<$Res> {
  factory _$$_FrequentContactCopyWith(
          _$_FrequentContact value, $Res Function(_$_FrequentContact) then) =
      __$$_FrequentContactCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "category") String category,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "rating") double rating});
}

/// @nodoc
class __$$_FrequentContactCopyWithImpl<$Res>
    extends _$FrequentContactCopyWithImpl<$Res, _$_FrequentContact>
    implements _$$_FrequentContactCopyWith<$Res> {
  __$$_FrequentContactCopyWithImpl(
      _$_FrequentContact _value, $Res Function(_$_FrequentContact) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? type = null,
    Object? name = null,
    Object? rating = null,
  }) {
    return _then(_$_FrequentContact(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FrequentContact implements _FrequentContact {
  const _$_FrequentContact(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "category") required this.category,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "rating") required this.rating});

  factory _$_FrequentContact.fromJson(Map<String, dynamic> json) =>
      _$$_FrequentContactFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "category")
  final String category;
  @override
  @JsonKey(name: "type")
  final String type;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "rating")
  final double rating;

  @override
  String toString() {
    return 'FrequentContact(id: $id, category: $category, type: $type, name: $name, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FrequentContact &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, category, type, name, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FrequentContactCopyWith<_$_FrequentContact> get copyWith =>
      __$$_FrequentContactCopyWithImpl<_$_FrequentContact>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FrequentContactToJson(
      this,
    );
  }
}

abstract class _FrequentContact implements FrequentContact {
  const factory _FrequentContact(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "category") required final String category,
          @JsonKey(name: "type") required final String type,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "rating") required final double rating}) =
      _$_FrequentContact;

  factory _FrequentContact.fromJson(Map<String, dynamic> json) =
      _$_FrequentContact.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "category")
  String get category;
  @override
  @JsonKey(name: "type")
  String get type;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "rating")
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$$_FrequentContactCopyWith<_$_FrequentContact> get copyWith =>
      throw _privateConstructorUsedError;
}

InstalledSticker _$InstalledStickerFromJson(Map<String, dynamic> json) {
  return _InstalledSticker.fromJson(json);
}

/// @nodoc
mixin _$InstalledSticker {
  @JsonKey(name: "url")
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstalledStickerCopyWith<InstalledSticker> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstalledStickerCopyWith<$Res> {
  factory $InstalledStickerCopyWith(
          InstalledSticker value, $Res Function(InstalledSticker) then) =
      _$InstalledStickerCopyWithImpl<$Res, InstalledSticker>;
  @useResult
  $Res call({@JsonKey(name: "url") String url});
}

/// @nodoc
class _$InstalledStickerCopyWithImpl<$Res, $Val extends InstalledSticker>
    implements $InstalledStickerCopyWith<$Res> {
  _$InstalledStickerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InstalledStickerCopyWith<$Res>
    implements $InstalledStickerCopyWith<$Res> {
  factory _$$_InstalledStickerCopyWith(
          _$_InstalledSticker value, $Res Function(_$_InstalledSticker) then) =
      __$$_InstalledStickerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "url") String url});
}

/// @nodoc
class __$$_InstalledStickerCopyWithImpl<$Res>
    extends _$InstalledStickerCopyWithImpl<$Res, _$_InstalledSticker>
    implements _$$_InstalledStickerCopyWith<$Res> {
  __$$_InstalledStickerCopyWithImpl(
      _$_InstalledSticker _value, $Res Function(_$_InstalledSticker) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$_InstalledSticker(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InstalledSticker implements _InstalledSticker {
  const _$_InstalledSticker({@JsonKey(name: "url") required this.url});

  factory _$_InstalledSticker.fromJson(Map<String, dynamic> json) =>
      _$$_InstalledStickerFromJson(json);

  @override
  @JsonKey(name: "url")
  final String url;

  @override
  String toString() {
    return 'InstalledSticker(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InstalledSticker &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InstalledStickerCopyWith<_$_InstalledSticker> get copyWith =>
      __$$_InstalledStickerCopyWithImpl<_$_InstalledSticker>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstalledStickerToJson(
      this,
    );
  }
}

abstract class _InstalledSticker implements InstalledSticker {
  const factory _InstalledSticker(
      {@JsonKey(name: "url") required final String url}) = _$_InstalledSticker;

  factory _InstalledSticker.fromJson(Map<String, dynamic> json) =
      _$_InstalledSticker.fromJson;

  @override
  @JsonKey(name: "url")
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_InstalledStickerCopyWith<_$_InstalledSticker> get copyWith =>
      throw _privateConstructorUsedError;
}

Ip _$IpFromJson(Map<String, dynamic> json) {
  return _Ip.fromJson(json);
}

/// @nodoc
mixin _$Ip {
  @JsonKey(name: "ip")
  String get ip => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IpCopyWith<Ip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IpCopyWith<$Res> {
  factory $IpCopyWith(Ip value, $Res Function(Ip) then) =
      _$IpCopyWithImpl<$Res, Ip>;
  @useResult
  $Res call({@JsonKey(name: "ip") String ip});
}

/// @nodoc
class _$IpCopyWithImpl<$Res, $Val extends Ip> implements $IpCopyWith<$Res> {
  _$IpCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ip = null,
  }) {
    return _then(_value.copyWith(
      ip: null == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IpCopyWith<$Res> implements $IpCopyWith<$Res> {
  factory _$$_IpCopyWith(_$_Ip value, $Res Function(_$_Ip) then) =
      __$$_IpCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "ip") String ip});
}

/// @nodoc
class __$$_IpCopyWithImpl<$Res> extends _$IpCopyWithImpl<$Res, _$_Ip>
    implements _$$_IpCopyWith<$Res> {
  __$$_IpCopyWithImpl(_$_Ip _value, $Res Function(_$_Ip) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ip = null,
  }) {
    return _then(_$_Ip(
      ip: null == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ip implements _Ip {
  const _$_Ip({@JsonKey(name: "ip") required this.ip});

  factory _$_Ip.fromJson(Map<String, dynamic> json) => _$$_IpFromJson(json);

  @override
  @JsonKey(name: "ip")
  final String ip;

  @override
  String toString() {
    return 'Ip(ip: $ip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ip &&
            (identical(other.ip, ip) || other.ip == ip));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IpCopyWith<_$_Ip> get copyWith =>
      __$$_IpCopyWithImpl<_$_Ip>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IpToJson(
      this,
    );
  }
}

abstract class _Ip implements Ip {
  const factory _Ip({@JsonKey(name: "ip") required final String ip}) = _$_Ip;

  factory _Ip.fromJson(Map<String, dynamic> json) = _$_Ip.fromJson;

  @override
  @JsonKey(name: "ip")
  String get ip;
  @override
  @JsonKey(ignore: true)
  _$$_IpCopyWith<_$_Ip> get copyWith => throw _privateConstructorUsedError;
}
