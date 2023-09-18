import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  MyTextField({
    super.key,
    required this.controller,
    required this.label,
    this.obscured = true,
    this.suffixed,
  });

  final TextEditingController controller;
  final String label;
  bool obscured;
  Widget? suffixed;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: suffixed,
        border: const OutlineInputBorder(
          borderSide: BorderSide(style: BorderStyle.solid),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        label: Text(
          label,
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
      obscureText: obscured,
    );
  }
}
