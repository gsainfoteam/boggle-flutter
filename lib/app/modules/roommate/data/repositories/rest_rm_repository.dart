import 'package:boggle_flutter/app/modules/post/domain/entities/post_entity.dart';
import 'package:boggle_flutter/app/modules/roommate/data/data_source/rm_api.dart';
import 'package:boggle_flutter/app/modules/roommate/domain/repositories/rm_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: RMRepository)
class RestRMRepository implements RMRepository {
  final RMApi _api;
  RestRMRepository({
    required RMApi api,
  }) : _api = api;

  @override
  Future<PostEntity> postRM(
    Map<String, dynamic> body,
  ) async {
    final responses = await _api.postRM(
      body,
    );

    return responses;
  }
}
