import 'package:flutter/material.dart';
import 'package:flutter_crud/layout/main_layout.dart';
import 'package:flutter_crud/pages/board/detail_screen.dart';
import 'package:get/get.dart';

class BoardScreen extends StatelessWidget {
  const BoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
        title: '게시판',
        child: ListView.separated(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Get.to(DetailScreen(id: index), arguments: '데이터 넘기기');
              },
              title: const Text('제목1'),
              leading: const Text('1'),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
        ));
  }
}
