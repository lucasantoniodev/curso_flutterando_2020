import 'package:flutter/material.dart';
import 'package:flutterando_2020/components/switch_dark_theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página inicial'),
        actions: const [CustomSwitch()],
      ),
      body: Center(
        child: ListView(
          // scrollDirection: Axis.horizontal,
          children: [
            Text('Contador: $counter'),
            const Text('Olá'),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(height: 500, width: 50, color: Colors.black),
                Container(height: 100, width: 50, color: Colors.green),
                Container(height: 200, width: 50, color: Colors.blue),
              ],
            ),
            Text('Contador: $counter'),
            Container(height: 200, width: 50, color: Colors.blue),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => setState(() => counter++),
      ),
    );
  }
}
