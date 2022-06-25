import 'package:flutter/material.dart';
import 'package:flutter_io_extended_korea_2022/screens/home.dart';
import 'package:flutter_io_extended_korea_2022/screens/ohhouse_screen.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Flutter I/O Extended Korea',
      home: HomeScreen(),
    );
  }
}
