import 'package:flutter/material.dart';
import 'package:flutter_crud/pages/auth/join_screen.dart';
import 'package:flutter_crud/pages/auth/signin_screen.dart';
import 'package:flutter_crud/pages/board/board_screen.dart';
import 'package:flutter_crud/pages/home_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/first',
          page: () => const BoardScreen(),
        ),
        GetPage(
          name: '/join',
          page: () => const JoinScreen(),
        ),
        GetPage(
          name: '/signin',
          page: () => const SigninScreen(),
        ),
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'CRUD 연습'),
    );
  }
}
