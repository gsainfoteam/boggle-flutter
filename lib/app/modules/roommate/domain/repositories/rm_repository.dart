import 'package:boggle_flutter/app/modules/post/domain/entities/post_entity.dart';

abstract class RMRepository {
  Future<PostEntity> postRM(
    Map<String, dynamic> body,
  );
}
