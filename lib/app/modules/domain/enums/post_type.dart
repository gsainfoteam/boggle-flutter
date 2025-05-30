import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:boggle_flutter/gen/assets.gen.dart';

part 'post_type.g.dart';

@HiveType(typeId: 1)
enum PostType {
  @HiveField(0)
  general,
  @HiveField(1)
  written,
  @HiveField(2)
  deadline,
  @HiveField(3)
  study,
  @HiveField(4)
  hobby,
  @HiveField(5)
  project,
  @HiveField(6)
  delivery,
  @HiveField(7)
  roommate,
  @HiveField(8)
  group,
  @HiveField(9)
  dummy;

  // 나중에 SvgGenImage , AssetGenImage, Color, ... 을
  // 추가해서 이 파일의 목적을 더 살릴 것

  static List<PostType> writable = [general];
  static List<PostType> types = [
    deadline,
    general,
    study,
    hobby,
    project,
    delivery,
    roommate,
    dummy,
  ];
}
