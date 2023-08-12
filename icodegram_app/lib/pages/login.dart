import 'package:flutter/material.dart';
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
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 160,
            ),
            Align(
                alignment: Alignment.center,
                child: Text('iCodegram',
                    style: TextStyle(
                      fontFamily: 'Lobster',
                      fontWeight: FontWeight.w400,
                      fontSize: 35,
                      color: Colors.white,
                    ))),
            Padding(padding: EdgeInsets.only(top: 52)),
            SizedBox(
              child: InputField(onSubmitted: (String ) {  },),
            )
          ],
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
