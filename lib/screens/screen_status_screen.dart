import 'package:flutter/material.dart';
import 'package:flutter_io_extended_korea_2022/enums/screen_status.dart';

/// Screen Status 예제
class ScreenStatusScreen extends StatefulWidget {
  const ScreenStatusScreen({Key? key}) : super(key: key);

  @override
  State<ScreenStatusScreen> createState() => _ScreenStatusScreenState();
}

class _ScreenStatusScreenState extends State<ScreenStatusScreen> {

  ScreenStatus screenStatus = ScreenStatus.normal;

  /// 데이터 가져오기
  void fetchData(ScreenStatus status) async {
    setState(() {
      screenStatus = ScreenStatus.loading;
    });

    // 2초 딜레이
    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      screenStatus = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Status Enum'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // screenStatus.when(),

            screenStatus.onlyWhen(
              onLoading: Image.asset('assets/images/loading.gif'),
              onSuccess: Image.asset('assets/images/success.jpeg'),
              onError: Image.asset('assets/images/error.jpeg'),
              onEmpty: Image.asset('assets/images/empty.png'),
            ),

            const SizedBox(height: 20),

            TextButton(
              onPressed: () {
                fetchData(ScreenStatus.success);
              },
              child: const Text('Success'),
            ),

            TextButton(
              onPressed: () {
                fetchData(ScreenStatus.error);
              },
              child: const Text('Error'),
            ),

            TextButton(
              onPressed: () {
                fetchData(ScreenStatus.empty);
              },
              child: const Text('Empty`'),
            ),
          ],
        ),
      ),
    );
  }
}
