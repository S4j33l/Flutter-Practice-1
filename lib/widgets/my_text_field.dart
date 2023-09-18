import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  MyTextField({
    super.key,
    required this.controller,
    required this.label,
    this.obscured = false,
  });

  final TextEditingController controller;
  final String label;
  bool obscured;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
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
