// ignore_for_file: avoid_print

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
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                    'https://www.petmag.com.br/app/uploads/petteca/famosos/8857/tico-e-teco-01-840x630.jpg'),
              ),
              accountName: const Text('Teco'),
              accountEmail: const Text('admin@admin.com'),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Início'),
              subtitle: const Text('Tela de início'),
              onTap: () => print('Salve'),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Sair'),
              subtitle: const Text('Finalizar sessão'),
              onTap: () => Navigator.pushReplacementNamed(context, '/'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Página inicial'),
        actions: const [CustomSwitch()],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador: $counter'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => setState(() {
          counter++;
        }),
      ),
    );
  }
}
