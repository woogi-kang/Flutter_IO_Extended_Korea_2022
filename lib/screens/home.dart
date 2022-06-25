import 'package:flutter/material.dart';
import 'package:flutter_io_extended_korea_2022/screens/oh_house/ohhouse_screen.dart';
import 'package:flutter_io_extended_korea_2022/screens/url_test/statuscode_test_screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter I/O Extended Korea 2022'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Get.to(() => const OhHouseScreen()),
              child: const Text(
                '오늘의집 예제',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
              onPressed: () => Get.to(() => const StatusCodeTestScreen()),
              child: const Text(
                'ScreenStatus 예제',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
