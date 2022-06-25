import 'package:flutter/material.dart';
import 'package:flutter_io_extended_korea_2022/enums/category_after.dart';
import 'package:flutter_io_extended_korea_2022/screens/oh_house/category_detail.dart';
// import 'package:flutter_io_extended_korea_2022/enums/category_before.dart';
import 'package:get/get.dart';

class OhHouseScreen extends StatefulWidget {
  const OhHouseScreen({Key? key}) : super(key: key);

  @override
  State<OhHouseScreen> createState() => _OhHouseScreenState();
}

class _OhHouseScreenState extends State<OhHouseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('오늘의집 예제'),
        leading: BackButton(onPressed: () => Get.back()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _title,
            const SizedBox(height: 15),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 2 / 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemCount: Category.values.length,
              itemBuilder: (BuildContext context, int index) {
                return _buildItem(Category.values[index]);
              },
            ),
          ],
        ),
      ),
    );
  }

  Row get _title {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          '어떤 상품을 찾나요?',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.lightBlue,
              ),
              borderRadius: BorderRadius.circular(5),
              color: Colors.white),
          child: const Text(
            '카테고리 전체 >',
            style: TextStyle(
              fontSize: 14,
              color: Colors.lightBlue,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildItem(Category category) {
    return GestureDetector(
      // 카테고리 상세페이지로 이동
      onTap: () => Get.to(() => CategoryDetail(category: category)),
      child: Container(
        padding: const EdgeInsets.all(3),
        color: Colors.grey[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 카테고리의 Image Widget
            category.image,
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 카테고리 ID`
                Text(
                  '${category.id}.',
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // 카테고리 이름
                Text(
                  category.name,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
