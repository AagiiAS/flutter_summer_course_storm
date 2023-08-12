import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final void Function(String) onSubmitted;
  const InputField({super.key, required this.onSubmitted});

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late TextEditingController _textEditingController;

  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: TextField(
        onSubmitted: (String value) {
          widget.onSubmitted(value);
        },
        controller: _textEditingController,
        maxLines: 1,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontFamily: 'Rubik',
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 14),
          filled: true,
          fillColor: Color(0xA0A0A0),
          hintText: 'Нэвтрэх нэр',
          hintStyle: TextStyle(
            color: Colors.white,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 1,
              style: BorderStyle.solid,
              color: Colors.grey,
            )
          ),
        ),
      ),
    );
  }
}
