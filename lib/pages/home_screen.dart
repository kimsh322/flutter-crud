import 'package:flutter/material.dart';
import 'package:flutter_crud/layout/main_layout.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _counter = 0;

  void _incrementCounter() {
    // setState(() {
    //   _counter++;
    // });
    Get.toNamed('/first');
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: 'CRUD 연습', children: [
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      ElevatedButton(
        onPressed: () {
          Get.toNamed('/first');
        },
        child: const Text('first page'),
      ),
    ]);
  }
}
