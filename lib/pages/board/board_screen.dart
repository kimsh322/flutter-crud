import 'package:flutter/material.dart';
import 'package:flutter_crud/layout/main_layout.dart';
import 'package:get/get.dart';

class BoardScreen extends StatelessWidget {
  const BoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: '게시판', children: [
      const Text('게시판'),
      ElevatedButton(
        onPressed: () {
          Get.toNamed('/');
        },
        child: const Text('홈으로 이동하기'),
      ),
    ]);
  }
}
