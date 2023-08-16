import 'package:flutter/material.dart';


class TextInput extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final TextEditingController editingController;

  const TextInput({super.key, required this.hintText, required this.isPassword, required this.editingController});

  @override
  Widget build(BuildContext context) {
    final inputDecoration = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
    );
    return TextField(
      decoration: InputDecoration(
        hintText: this.hintText,
        border: inputDecoration,
        focusedBorder: inputDecoration,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide( width: 1, color: Colors.grey)
        ),
      ),
      obscureText: this.isPassword,
    );
  }
}

