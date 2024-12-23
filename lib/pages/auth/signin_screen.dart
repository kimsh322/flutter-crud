import 'package:flutter/material.dart';
import 'package:flutter_crud/layout/main_layout.dart';
import 'package:flutter_crud/widgets/custom_auth_button.dart';
import 'package:flutter_crud/widgets/custom_text_form_field.dart';
import 'package:get/get.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: '로그인', children: [
      Container(
        alignment: Alignment.center,
        child: const Text(
          '로그인',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      const SizedBox(height: 20),
      _signinForm(),
    ]);
  }

  Widget _signinForm() {
    return Form(
        child: Column(
      children: [
        const CustomTextFormField(hintText: 'userId'),
        const CustomTextFormField(hintText: 'password'),
        CustomAuthButton(
          text: '로그인',
          callback: () => Get.toNamed('/'),
        ),
      ],
    ));
  }
}
