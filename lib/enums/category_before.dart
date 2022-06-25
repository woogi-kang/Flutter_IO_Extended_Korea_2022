import 'package:flutter/material.dart';

enum CategoryBefore {
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

extension CategoryBeforeExt on CategoryBefore {
  String get imageUrl {
    switch(this) {
      case CategoryBefore.furniture:
        return 'assets/images/가구.webp';
      case CategoryBefore.fabric:
        return 'assets/images/패브릭.webp';
      case CategoryBefore.electronics:
        return 'assets/images/가전.webp';
      case CategoryBefore.kids:
        return 'assets/images/유아·아동.webp';
      case CategoryBefore.lights:
        return 'assets/images/조명.webp';
      case CategoryBefore.kitchen:
        return 'assets/images/주방용품.webp';
      case CategoryBefore.decoration:
        return 'assets/images/데코·식물.webp';
      case CategoryBefore.storage:
        return 'assets/images/수납·정리.webp';
      case CategoryBefore.supplies:
        return 'assets/images/생활용품.webp';
      case CategoryBefore.necessity:
        return 'assets/images/생필품.webp';
      case CategoryBefore.diy:
        return 'assets/images/공구·DIY.webp';
      case CategoryBefore.interior:
        return 'assets/images/인테리어시공.webp';
      case CategoryBefore.pet:
        return 'assets/images/반려동물.webp';
      case CategoryBefore.camping:
        return 'assets/images/캠핑용품.webp';
      case CategoryBefore.fitness:
        return 'assets/images/실내운동.webp';
      case CategoryBefore.rental:
        return 'assets/images/렌탈.webp';
    }
  }

  int get categoryId {
    return index + 1;
  }

  Widget get image => Image.asset(imageUrl, height: 80,);
}