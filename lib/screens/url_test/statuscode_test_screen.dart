import 'package:flutter/material.dart';
import 'package:flutter_io_extended_korea_2022/enums/screen_status.dart';

class StatusCodeTestScreen extends StatefulWidget {
  const StatusCodeTestScreen({Key? key}) : super(key: key);

  @override
  State<StatusCodeTestScreen> createState() => _StatusCodeTestScreenState();
}

class _StatusCodeTestScreenState extends State<StatusCodeTestScreen> {
  ScreenStatus screenStatus = ScreenStatus.normal;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async => await fetchData());
  }

  Future<void> fetchData() async {
    setState(() {
      screenStatus = ScreenStatus.loading;
    });

    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      // screenStatus = ScreenStatus.success;
      // screenStatus = ScreenStatus.error;
      screenStatus = ScreenStatus.empty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StatusCode Enum'),
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
                fetchData();
              },
              child: const Text('데이터 가져오기'),
            ),
          ],
        ),
      ),
    );
  }
}
