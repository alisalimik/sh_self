import 'package:meta/meta.dart';
import 'package:sh_self/tdlib_dart/src/api/extensions/data_class_extensions.dart';
import 'package:sh_self/tdlib_dart/src/api/tdapi.dart';

/// Returns an animated emoji corresponding to a given emoji. Returns a 404
/// error if the emoji has no animated emoji
/// Returns [AnimatedEmoji]
@immutable
class GetAnimatedEmoji extends TdFunction {
  const GetAnimatedEmoji({
    required this.emoji,
  });

  /// [emoji] The emoji
  final String emoji;

  static const String constructor = 'getAnimatedEmoji';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'emoji': emoji,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
