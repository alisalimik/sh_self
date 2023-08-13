import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Searches public chats by looking for specified query in their username and
/// title. Currently, only private chats, supergroups and channels can be
/// public. Returns a meaningful number of results. Excludes private chats
/// with contacts and chats from the chat list from the results
/// Returns [Chats]
@immutable
class SearchPublicChats extends TdFunction {
  const SearchPublicChats({
    required this.query,
  });

  /// [query] Query to search for
  final String query;

  static const String constructor = 'searchPublicChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'query': query,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
