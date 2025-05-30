import '../../domain/enums/post_type.dart';

enum PostMy {
  own;

  static PostMy? fromType(PostType type) => {
        PostType.written: own,
      }[type];
}
