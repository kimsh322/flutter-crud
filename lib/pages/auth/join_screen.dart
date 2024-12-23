import 'package:flutter/material.dart';
import 'package:flutter_crud/layout/main_layout.dart';
import 'package:flutter_crud/pages/auth/validators.dart';
import 'package:flutter_crud/widgets/custom_auth_button.dart';
import 'package:flutter_crud/widgets/custom_text_form_field.dart';
import 'package:get/get.dart';

class JoinScreen extends StatelessWidget {
  JoinScreen({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MainLayout(
        title: '회원가입',
        child: Column(children: [
          Container(
            alignment: Alignment.center,
            child: const Text(
              '회원가입',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          _joinForm(),
        ]));
  }

  Widget _joinForm() {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            const CustomTextFormField(
              hintText: 'email',
              validator: emailValidator,
            ),
            const CustomTextFormField(
              hintText: 'userId',
              validator: userIdvalidator,
            ),
            const CustomTextFormField(
              hintText: 'password',
              validator: passwordValidator,
            ),
            CustomAuthButton(
              text: '회원가입',
              callback: () {
                if (_formKey.currentState!.validate()) {
                  Get.toNamed('/signin');
                }
              },
            ),
          ],
        ));
  }
}
