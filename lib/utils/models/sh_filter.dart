import 'package:sh_self/sh_self.dart';
import 'package:sh_self/utils/models/sh_chat_type.dart';
import 'package:sh_self/utils/models/sh_event.dart';
import 'package:sh_self/utils/models/sh_message_type.dart';

class ShFilter {
  final List<ShEvent> eventFilter;
  final List<String> regExFilter;
  final List<int> senderFilter;
  final List<ShChatType> incomingChatTypeFilter;
  final List<ShMessageType> messageTypesFilter;
  const ShFilter({
    this.eventFilter = const [ShEvent.onNewMessage],
    this.regExFilter = const [""],
    this.senderFilter = const [],
    this.incomingChatTypeFilter = const [ShChatType.private, ShChatType.group],
    this.messageTypesFilter = const [ShMessageType.text],
  });
  // Override the + operator
  ShFilter operator +(ShFilter other) {
    // check if the already value is the default constructor one replace with new one and if the new one is default ignore else sum

    List<String> newRegExFilter = const [""];
    if (regExFilter == newRegExFilter && other.regExFilter != newRegExFilter) {
      newRegExFilter = other.regExFilter;
    } else if (regExFilter != newRegExFilter &&
        other.regExFilter == newRegExFilter) {
      newRegExFilter = regExFilter;
    } else if (regExFilter != newRegExFilter &&
        other.regExFilter != newRegExFilter) {
      newRegExFilter = regExFilter + other.regExFilter;
    }

    List<ShEvent> newEventFilter = const [ShEvent.onNewMessage];
    if (eventFilter == newEventFilter && other.eventFilter != newEventFilter) {
      newEventFilter = other.eventFilter;
    } else if (eventFilter != newEventFilter &&
        other.eventFilter == newEventFilter) {
      newEventFilter = eventFilter;
    } else if (eventFilter != newEventFilter &&
        other.eventFilter != newEventFilter) {
      newEventFilter = eventFilter + other.eventFilter;
    }

    List<int> newSenderFilter = const [];
    if (senderFilter == newSenderFilter &&
        other.senderFilter != newSenderFilter) {
      newSenderFilter = other.senderFilter;
    } else if (senderFilter != newSenderFilter &&
        other.senderFilter == newSenderFilter) {
      newSenderFilter = senderFilter;
    } else if (senderFilter != newSenderFilter &&
        other.senderFilter != newSenderFilter) {
      newSenderFilter = senderFilter + other.senderFilter;
    }

    List<ShMessageType> newMessageTypesFilter = const [ShMessageType.text];
    if (messageTypesFilter == newMessageTypesFilter &&
        other.messageTypesFilter != newMessageTypesFilter) {
      newMessageTypesFilter = other.messageTypesFilter;
    } else if (messageTypesFilter != newMessageTypesFilter &&
        other.messageTypesFilter == newMessageTypesFilter) {
      newMessageTypesFilter = messageTypesFilter;
    } else if (messageTypesFilter != newMessageTypesFilter &&
        other.messageTypesFilter != newMessageTypesFilter) {
      newMessageTypesFilter = messageTypesFilter + other.messageTypesFilter;
    }

    List<ShChatType> newIncomingChatTypeFilter = const [
      ShChatType.private,
      ShChatType.group
    ];
    if (incomingChatTypeFilter == newIncomingChatTypeFilter &&
        other.incomingChatTypeFilter != newIncomingChatTypeFilter) {
      newIncomingChatTypeFilter = other.incomingChatTypeFilter;
    } else if (incomingChatTypeFilter != newIncomingChatTypeFilter &&
        other.incomingChatTypeFilter == newIncomingChatTypeFilter) {
      newIncomingChatTypeFilter = incomingChatTypeFilter;
    } else if (incomingChatTypeFilter != newIncomingChatTypeFilter &&
        other.incomingChatTypeFilter != newIncomingChatTypeFilter) {
      newIncomingChatTypeFilter =
          incomingChatTypeFilter + other.incomingChatTypeFilter;
    }

    return copyWith(
      regExFilter: newRegExFilter,
      eventFilter: newEventFilter,
      senderFilter: newSenderFilter,
      incomingChatTypeFilter: newIncomingChatTypeFilter,
    );
  }

  factory ShFilter.regex(String exp) => ShFilter(regExFilter: [exp]);
  factory ShFilter.me() => ShFilter(senderFilter: [telegramApp.me?.id ?? 0]);
  factory ShFilter.private() =>
      const ShFilter(incomingChatTypeFilter: [ShChatType.private]);
  factory ShFilter.group() =>
      const ShFilter(incomingChatTypeFilter: [ShChatType.group]);

  factory ShFilter.text() => const ShFilter();
  factory ShFilter.document() =>
      const ShFilter(messageTypesFilter: [ShMessageType.document]);
  factory ShFilter.photo() =>
      const ShFilter(messageTypesFilter: [ShMessageType.photo]);
  factory ShFilter.video() =>
      const ShFilter(messageTypesFilter: [ShMessageType.video]);
  factory ShFilter.sticker() =>
      const ShFilter(messageTypesFilter: [ShMessageType.sticker]);
  factory ShFilter.poll() =>
      const ShFilter(messageTypesFilter: [ShMessageType.poll]);
  factory ShFilter.animation() =>
      const ShFilter(messageTypesFilter: [ShMessageType.animation]);
  factory ShFilter.location() =>
      const ShFilter(messageTypesFilter: [ShMessageType.location]);
  factory ShFilter.game() =>
      const ShFilter(messageTypesFilter: [ShMessageType.game]);
  factory ShFilter.audio() =>
      const ShFilter(messageTypesFilter: [ShMessageType.audio]);
  factory ShFilter.contact() =>
      const ShFilter(messageTypesFilter: [ShMessageType.contact]);
  factory ShFilter.call() =>
      const ShFilter(messageTypesFilter: [ShMessageType.call]);
  factory ShFilter.animatedEmoji() =>
      const ShFilter(messageTypesFilter: [ShMessageType.animatedEmoji]);
  factory ShFilter.dice() =>
      const ShFilter(messageTypesFilter: [ShMessageType.dice]);
  factory ShFilter.story() =>
      const ShFilter(messageTypesFilter: [ShMessageType.story]);
  factory ShFilter.allMessageTypes() =>
      const ShFilter(messageTypesFilter: ShMessageType.values);
  factory ShFilter.tdlib() => const ShFilter(
        senderFilter: [0],
        incomingChatTypeFilter: [ShChatType.unknown],
        messageTypesFilter: [ShMessageType.unsupported],
      );

  ShFilter copyWith({
    List<ShEvent>? eventFilter,
    List<String>? regExFilter,
    List<int>? senderFilter,
    List<ShChatType>? incomingChatTypeFilter,
    List<ShMessageType>? messageTypesFilter,
  }) {
    return ShFilter(
      eventFilter: eventFilter ?? this.eventFilter,
      regExFilter: regExFilter ?? this.regExFilter,
      senderFilter: senderFilter ?? this.senderFilter,
      incomingChatTypeFilter:
          incomingChatTypeFilter ?? this.incomingChatTypeFilter,
      messageTypesFilter: messageTypesFilter ?? this.messageTypesFilter,
    );
  }
}
