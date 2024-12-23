import 'package:flutter/material.dart';
import 'package:flutter_crud/layout/main_layout.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return MainLayout(
        title: 'CRUD 연습',
        child: Column(children: [
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '그냥 CRUD 연습해보려고 만든 프로젝트',
                )
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/board');
            },
            child: const Text('게시판 페이지로 이동하기'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/join');
            },
            child: const Text('회원가입 페이지로 이동하기'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/signin');
            },
            child: const Text('로그인 페이지로 이동하기'),
          ),
        ]));
  }
}
