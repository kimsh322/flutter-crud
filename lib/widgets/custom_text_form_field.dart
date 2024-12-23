import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final validator;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        validator: validator,
        obscureText: hintText == 'password' ? true : false,
        decoration: InputDecoration(
          hintText: hintText,
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          errorBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          focusedErrorBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
