import 'package:flutter/material.dart';

enum Category {
  furniture(1, '가구', Colors.red),
  fabric(2, '패브릭', Colors.orange),
  electronics(3, '가전', Colors.yellow),
  kids(4, '유아·아동', Colors.green),
  lights(5, '조명', Colors.blue),
  kitchen(6, '주방용품', Colors.grey),
  decoration(7, '데코·식물', Colors.purple),
  storage(8, '수납·정리', Colors.cyanAccent),
  supplies(9, '생활용품', Colors.deepPurpleAccent),
  necessity(10, '생필품', Colors.tealAccent),
  diy(11, '공구·DIY', Colors.purpleAccent),
  interior(12, '인테리어시공', Colors.yellowAccent),
  pet(13, '반려동물', Colors.greenAccent),
  camping(14, '캠핑용품', Colors.blueAccent),
  fitness(15, '실내운동', Colors.redAccent),
  rental(16, '렌탈', Colors.pink);

  /// 카테고리 ID
  final int id;
  /// 카테고리 이름
  final String name;
  /// 카테고리 색상
  final Color color;

  const Category(this.id, this.name, this.color);

  /// 이미지 경로
  String get imageUrl => 'assets/images/$name.webp';

  /// 이미지 위젯
  Widget get image => Image.asset(imageUrl);

  @override
  String toString() {
    return '내가 선택한 카테고리는\n$name 입니다.';
  }
}