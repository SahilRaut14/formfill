import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final TextEditingController controller;
  // final String labelText;
  final IconData icon;
  final String hintText;
  final String? Function(String?)? validator;

  const MyTextFormField(
      {super.key,
      required this.controller,
      // required this.labelText,
      required this.icon,
      required this.hintText,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(icon),
          // labelText: labelText,
          border: const OutlineInputBorder()),
      validator: validator ?? _defaultValidator,
    );
  }

  String? _defaultValidator(String? value) {
    if (value?.isEmpty ?? true) {
      return 'Please enter a valid $hintText';
    }
    return null;
  }
}
