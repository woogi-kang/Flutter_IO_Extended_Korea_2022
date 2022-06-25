import 'package:flutter/material.dart';

enum Category {
  furniture(0, '가구'),
  fabric(1, '패브릭'),
  electronics(2, '가전'),
  kids(3, '유아·아동'),
  lights(4, '조명'),
  kitchen(5, '주방용품'),
  decoration(6, '데코·식물'),
  storage(7, '수납·정리'),
  supplies(8, '생활용품'),
  necessity(9, '생필품'),
  diy(10, '공구·DIY'),
  interior(11, '인테리어시공'),
  pet(12, '반려동물'),
  camping(13, '갬핑용품'),
  fitness(14, '실내운동'),
  rental(15, '렌탈');

  /// 카테고리 ID
  final int categoryId = 0;
  /// 카테고리 이름
  final String name = '';

  const Category(categoryId, name);

  String get imageUrl => 'assets/name.webp';

  Widget get image => Image.asset(imageUrl);
}