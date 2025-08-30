import 'package:boggle_flutter/app/modules/post/domain/entities/post_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'rm_api.g.dart';

@injectable
@RestApi(baseUrl: 'post')
abstract class RMApi {
  @factoryMethod
  factory RMApi(@Named('default') Dio dio) = _RMApi;
  @POST('')
  Future<PostEntity> postRM(
    @Body() Map<String, dynamic> body,
  );
}
