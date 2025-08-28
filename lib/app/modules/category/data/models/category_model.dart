import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
//part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required String title,
    required Widget icon,
    required String value, // 'rm', 'study' 등 실제 값
  }) = _CategoryModel;

  //아직 api랑 연동 목적 없음.
  /*
  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
  */
}
