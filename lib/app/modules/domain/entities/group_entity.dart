import 'package:boggle_flutter/app/modules/domain/entities/president_entity.dart';

class GroupEntity {
  final String uuid;
  final String name;
  final String description;
  final DateTime createdAt;
  final PresidentEntity? president;
  final String? presidentUuid;
  final int? memberCount;
  final DateTime? verifiedAt;
  final bool? verified;
  final DateTime? deletedAt;
  final String? notionPageId;
  final String? profileImageKey;
  final String? profileImageUrl;
  final int? id;

  GroupEntity({
    required this.uuid,
    required this.name,
    required this.description,
    required this.createdAt,
    this.president,
    this.presidentUuid,
    required this.memberCount,
    required this.verifiedAt,
    required this.verified,
    required this.deletedAt,
    required this.notionPageId,
    required this.profileImageKey,
    required this.profileImageUrl,
    required this.id,
  });
}
