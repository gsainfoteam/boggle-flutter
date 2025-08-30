import 'package:boggle_flutter/app/modules/post/data/model/post_list_model.dart';
import 'package:boggle_flutter/app/modules/post/data/model/post_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'post_api.g.dart';

@injectable
@RestApi(baseUrl: 'post/')
abstract class PostApi {
  @factoryMethod
  factory PostApi(@Named('default') Dio dio) = _PostApi;
  @GET('')
  Future<PostListModel> getPosts(
    @Query('type') String type,
    @Query('skip') int skip,
    @Query('take') int take,
  );
  @GET('{id}')
  Future<PostModel> getSinglePost(
    @Path('id') String id,
  );
}
