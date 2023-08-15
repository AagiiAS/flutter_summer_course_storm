import 'package:flutter/material.dart';
import 'package:icodegram_app/component/text_input_field.dart';
import 'package:icodegram_app/pages/input_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x121212),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(child: Container(), flex: 2,),
              Text('iCodegram',
                  style: TextStyle(
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.w400,
                    fontSize: 35,
                    color: Colors.white,
                  )),

              // Align(
              //     alignment: Alignment.center,
              //     child: ),
              SizedBox(height: 60,),

              TextInputField(hintText: 'УТАСНЫ ДУГААР'),
              SizedBox(height: 24,),

              TextInputField(hintText: 'НУУЦ ҮГ'),
              InkWell(
                child: Container(
                  width: double.infinity,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
// Align( alignment: Alignment.center,
// child: Text(
// 'iCodegram', style: TextStyle(
// fontFamily: 'Lobster',
// fontWeight: FontWeight.w400,
// fontSize: 35,
// color: Colors.white,
//
//
// ),),,),
// title: SizedBox(
//   height: 160,
//   child: Text(
//     'iCodegram', style: TextStyle(
//     fontFamily: 'Lobster',
//     fontWeight: FontWeight.w400,
//     fontSize: 35,
//     color: Colors.white

// ),
// ),
// ),
// ),
