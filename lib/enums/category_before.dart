import 'package:flutter/material.dart';

enum Category {
  furniture,
  fabric,
  electronics,
  kids,
  lights,
  kitchen,
  decoration,
  storage,
  supplies,
  necessity,
  diy,
  interior,
  pet,
  camping,
  fitness,
  rental;
}

extension CategoryBeforeExt on Category {
  /// 카테고리 이미지 경로
  String get imageUrl {
    switch (this) {
      case Category.furniture:
        return 'assets/images/가구.webp';
      case Category.fabric:
        return 'assets/images/패브릭.webp';
      case Category.electronics:
        return 'assets/images/가전.webp';
      case Category.kids:
        return 'assets/images/유아·아동.webp';
      case Category.lights:
        return 'assets/images/조명.webp';
      case Category.kitchen:
        return 'assets/images/주방용품.webp';
      case Category.decoration:
        return 'assets/images/데코·식물.webp';
      case Category.storage:
        return 'assets/images/수납·정리.webp';
      case Category.supplies:
        return 'assets/images/생활용품.webp';
      case Category.necessity:
        return 'assets/images/생필품.webp';
      case Category.diy:
        return 'assets/images/공구·DIY.webp';
      case Category.interior:
        return 'assets/images/인테리어시공.webp';
      case Category.pet:
        return 'assets/images/반려동물.webp';
      case Category.camping:
        return 'assets/images/캠핑용품.webp';
      case Category.fitness:
        return 'assets/images/실내운동.webp';
      case Category.rental:
        return 'assets/images/렌탈.webp';
    }
  }

  /// 카테고리 색상
  Color get color {
    switch (this) {
      case Category.furniture:
        return Colors.red;
      case Category.fabric:
        return Colors.orange;
      case Category.electronics:
        return Colors.yellow;
      case Category.kids:
        return Colors.green;
      case Category.lights:
        return Colors.blue;
      case Category.kitchen:
        return Colors.grey;
      case Category.decoration:
        return Colors.purple;
      case Category.storage:
        return Colors.cyanAccent;
      case Category.supplies:
        return Colors.deepPurpleAccent;
      case Category.necessity:
        return Colors.tealAccent;
      case Category.diy:
        return Colors.purpleAccent;
      case Category.interior:
        return Colors.yellowAccent;
      case Category.pet:
        return Colors.greenAccent;
      case Category.camping:
        return Colors.blueAccent;
      case Category.fitness:
        return Colors.redAccent;
      case Category.rental:
        return Colors.pink;
    }
  }

  /// 카테고리 이름
  String get name {
    switch (this) {
      case Category.furniture:
        return '가구';
      case Category.fabric:
        return '패브릭';
      case Category.electronics:
        return '가전';
      case Category.kids:
        return '유아·아동';
      case Category.lights:
        return '조명';
      case Category.kitchen:
        return '주방용품';
      case Category.decoration:
        return '데코·식물';
      case Category.storage:
        return '수납·정리';
      case Category.supplies:
        return '생활용품';
      case Category.necessity:
        return '생필품';
      case Category.diy:
        return '공구·DIY';
      case Category.interior:
        return '인테리어시공';
      case Category.pet:
        return '반려동물';
      case Category.camping:
        return '캠핑용품';
      case Category.fitness:
        return '실내운동';
      case Category.rental:
        return '렌탈';
    }
  }

  /// 카테고리 ID
  int get categoryId {
    return index + 1;
  }

  /// 이미지 위젯
  Widget get image => Image.asset(imageUrl);

  String categoryToString() {
    return '내가 선택한 카테고리는\n$name 입니다.';
  }
}
