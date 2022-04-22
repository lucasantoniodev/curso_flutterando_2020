import 'package:flutter/material.dart';
import 'package:flutterando_2020/controller/app_controller.dart';
import 'package:flutterando_2020/pages/home_page.dart';
import 'package:flutterando_2020/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (_, __) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: AppController.instance.isDarkTheme
              ? Brightness.dark
              : Brightness.light,
        ),
        home: const LoginPage(),
      ),
    );
  }
}
