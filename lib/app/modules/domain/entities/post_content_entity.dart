class PostContentEntity {
  const PostContentEntity({
    required this.uuid,
    required this.content,
    this.deadline,
    required this.createdAt,
    this.id,
  });

  final String uuid;
  final String content;
  final DateTime? deadline;
  final DateTime createdAt;
  final int? id;
}

extension PostContentsEntityX on Iterable<PostContentEntity> {
  // 전체 콘텐츠 중에서 id == 1인 메인 콘텐츠 반환
  PostContentEntity get main => firstWhere((e) => e.id == 1);

  // id != 1인 추가 콘텐츠들 반환
  Iterable<PostContentEntity> get additionals => where((e) => e.id != 1);
}
