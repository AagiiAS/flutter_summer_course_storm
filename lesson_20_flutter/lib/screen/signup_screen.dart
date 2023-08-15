import 'package:flutter/material.dart';
import 'package:lesson_20_flutter/components/text_input_field.dart';
import 'package:lesson_20_flutter/resources/auth_methods.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _repeatController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Container(),
                flex: 2,
              ),
              Text(
                'iCodegram',
                style: TextStyle(fontSize: 34),
              ),
              SizedBox(
                height: 40,
              ),
              TextInputField(
                hintText: "User email",
                isPassword: false,
                editingController: _emailController,
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 24,
              ),
              TextInputField(
                hintText: 'Fullname',
                isPassword: false,
                editingController: _userController,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 24,
              ),
              TextInputField(
                hintText: 'Password',
                isPassword: true,
                editingController: _passController,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 24,
              ),
              TextInputField(
                hintText: ' Repeat Password',
                isPassword: true,
                editingController: _repeatController,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {
                  print(_emailController.text);

                  AuthMethod().singUpUser(
                      email: _emailController.text,
                      password: _passController.text,
                      username: _userController.text);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    color: Colors.blue,
                  ),
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
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
