import 'package:day_07/components/text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Flexible(
                child: Container(),
                flex: 2,
              ),
              Text(
                'ASO ',
                style: TextStyle(
                    fontSize: 45,
                    color: Color(0xFFFFD7B5),
                    ),
              ),
              SizedBox(
                height: 50,
              ),
              TextInput(
                  hintText: 'Утасны дугаар',
                  isPassword: false,
                  editingController: _phoneController),
              SizedBox(
                height: 24,
              ),
              TextInput(
                  hintText: 'Нууц үг',
                  isPassword: true,
                  editingController: _passController),
              SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  width: 300,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      color: Color(0xFFFFD7B5)),
                  child: Text('Нэвтрэх'),
                ),

              ),
              Flexible(
                child: Container(),
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
