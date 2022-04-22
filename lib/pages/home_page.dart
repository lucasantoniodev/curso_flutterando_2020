import 'package:flutter/material.dart';
import 'package:flutterando_2020/controller/app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página inicial'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: AppController.instance,
          builder: (_, __) => Switch(
            value: AppController.instance.isDarkTheme,
            onChanged: (bool value) {
              AppController.instance.changeTheme();
            },
          ),
        ),
      ),
    );
  }
}
