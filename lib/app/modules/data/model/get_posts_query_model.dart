import 'package:boggle_flutter/app/modules/domain/enums/post_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:boggle_flutter/app/modules/data/enums/post_my.dart';

part 'get_posts_query_model.freezed.dart';
part 'get_posts_query_model.g.dart';

@Freezed(toJson: true)
class GetPostsQueryModel with _$GetPostsQueryModel {
  @JsonSerializable(includeIfNull: false)
  const factory GetPostsQueryModel({
    int? offset,
    // offset : 몇 번째 공지부터 가져올지 지정하는 인덱스 ex. 0은 첫 공지, 10은 11번째 공지부터 조회
    int? limit,
    // limit : 한 번에 몇 개의 공지를 가져올지 지정 ex. 20이면 최대 20개 공지 응답
    String? search,
    // search : 공지 제목이나 내용에서 특정 단어를 포함한 공지만 필터링
    List<String>? tags,
    // tags : 공지에 지정된 태그들 중 하나 이상 포함된 공지를 검색할 때 사용
    PostMy? my,
    // my : 내가 작성한 공지, 내가 참여한 공지 등 개인화 필터링용
    PostCategory? category,
  }) = _GetPostsQueryModel;
}
