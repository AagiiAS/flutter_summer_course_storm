import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final TextEditingController editingController;
  final TextInputType textInputType;
  const TextInputField(
      {super.key,
      required this.hintText,
      required this.isPassword,
      required this.editingController, required this.textInputType});

  @override
  Widget build(BuildContext context) {
    final inputDecoration = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
    );
    return TextField(
      controller: this.editingController,
      decoration: InputDecoration(
        hintText: this.hintText,
        border: inputDecoration,
        enabledBorder: inputDecoration,
        focusedBorder: inputDecoration,
      ),
      obscureText: this.isPassword,
      keyboardType: textInputType,
    );
  }
}
