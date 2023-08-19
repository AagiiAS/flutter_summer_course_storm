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
      required this.editingController,
      required this.textInputType});

  @override
  Widget build(BuildContext context) {
    final inputDecoration = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
      borderRadius: BorderRadius.circular(10),
    );
    return TextField(
      controller: editingController,
      decoration: InputDecoration(
        fillColor: Color(0xFFA0A0A0),
        hintText: '$hintText',
        hintStyle: TextStyle(color: Colors.white),
        border: inputDecoration,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Color(0xFFA0A0A0))),
        focusedBorder: inputDecoration,
      ),
      style: TextStyle(color: Colors.white),
      obscureText: isPassword,
      keyboardType: textInputType,
    );
  }
}
