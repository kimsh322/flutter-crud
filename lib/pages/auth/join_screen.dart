import 'package:flutter/material.dart';
import 'package:flutter_crud/layout/main_layout.dart';
import 'package:flutter_crud/widgets/custom_auth_button.dart';
import 'package:flutter_crud/widgets/custom_text_form_field.dart';
import 'package:get/get.dart';

class JoinScreen extends StatelessWidget {
  const JoinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: '회원가입', children: [
      Container(
        alignment: Alignment.center,
        child: const Text(
          '회원가입',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      const SizedBox(height: 20),
      _joinForm(),
    ]);
  }

  Widget _joinForm() {
    return Form(
        child: Column(
      children: [
        const CustomTextFormField(hintText: 'email'),
        const CustomTextFormField(hintText: 'userId'),
        const CustomTextFormField(hintText: 'password'),
        CustomAuthButton(
          text: '회원가입',
          callback: () => Get.toNamed('/signin'),
        ),
      ],
    ));
  }
}
