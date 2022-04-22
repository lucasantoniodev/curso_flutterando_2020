import 'package:flutter/material.dart';
import 'package:flutterando_2020/components/switch_dark_theme.dart';

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
        actions: const [
          CustomSwitch()
        ],
      ),
      body: const Center(
        child: Text('HI'),
      ),
    );
  }
}

