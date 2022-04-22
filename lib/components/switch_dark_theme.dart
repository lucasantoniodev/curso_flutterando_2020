import 'package:flutter/material.dart';
import 'package:flutterando_2020/controller/app_controller.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
     builder: (_, __) => Switch(
        value: AppController.instance.isDarkTheme,
        onChanged: (bool value) {
          AppController.instance.changeTheme();
        },
      ),
    );
  }
}

// Componentizando permite ter a regra de negócio em vários locais sem ter que repetir