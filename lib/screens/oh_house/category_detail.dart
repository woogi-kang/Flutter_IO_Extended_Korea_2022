import 'package:flutter/material.dart';
import 'package:flutter_io_extended_korea_2022/enums/category_after.dart';
import 'package:get/get.dart';

/// 카테고리 상세페이지
class CategoryDetail extends StatefulWidget {
  const CategoryDetail({super.key, required this.category});

  final Category category;

  @override
  State<CategoryDetail> createState() => _CategoryDetailState();
}

class _CategoryDetailState extends State<CategoryDetail> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() async => await fetchData());
  }

  Future<void> fetchData() async {
    // [widget.category.id] 를 통해 서버에서 데이터 불러오기.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.name),
        backgroundColor: widget.category.color,
        leading: BackButton(onPressed: () => Get.back()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget.category.image,
              const SizedBox(height: 20),
              Text(
                widget.category.toString(),
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
