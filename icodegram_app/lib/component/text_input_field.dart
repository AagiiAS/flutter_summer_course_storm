import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final String hintText;
  const TextInputField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    final inputDecoration = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
      borderRadius: BorderRadius.circular(10),

    );
    return TextField(
      decoration: InputDecoration(
        fillColor: Color(0xFFA0A0A0),
        hintText: this.hintText,
        hintStyle: TextStyle(color: Colors.white),
        border: inputDecoration,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Color(0xFFA0A0A0))
        ),
        focusedBorder: inputDecoration,

      ),
      style: TextStyle(color: Colors.white),
    );
  }
}
