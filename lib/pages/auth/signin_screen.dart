import 'package:flutter/material.dart';
import 'package:flutter_crud/layout/main_layout.dart';
import 'package:flutter_crud/pages/auth/validators.dart';
import 'package:flutter_crud/widgets/custom_auth_button.dart';
import 'package:flutter_crud/widgets/custom_text_form_field.dart';
import 'package:get/get.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({super.key});
  final _formKey = GlobalKey<FormState>();

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
        key: _formKey,
        child: Column(
          children: [
            const CustomTextFormField(
              hintText: 'userId',
              validator: userIdvalidator,
            ),
            const CustomTextFormField(
              hintText: 'password',
              validator: passwordValidator,
            ),
            CustomAuthButton(
              text: '로그인',
              callback: () {
                if (_formKey.currentState!.validate()) {
                  Get.toNamed('/');
                }
              },
            ),
          ],
        ));
  }
}
