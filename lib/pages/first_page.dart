import 'package:flutter/material.dart';
import 'package:flutter_crud/layout/main_layout.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: '첫번째 페이지', children: [
      const Text('첫번째 페이지'),
      ElevatedButton(
        onPressed: () {
          Get.toNamed('/');
        },
        child: const Text('home'),
      ),
    ]);
  }
}
