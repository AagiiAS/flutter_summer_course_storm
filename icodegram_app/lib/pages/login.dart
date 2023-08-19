import 'package:flutter/material.dart';
import 'package:icodegram_app/component/gradient_text.dart';
import 'package:icodegram_app/component/text_input_field.dart';
import 'package:icodegram_app/pages/home_screen.dart';
import 'package:icodegram_app/pages/input_field.dart';
import 'package:icodegram_app/pages/sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _phonecontroller = TextEditingController();
  final TextEditingController _passcontroller = TextEditingController();
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
              SizedBox(
                height: 60,
              ),

              TextInputField(
                hintText: 'УТАСНЫ ДУГААР',
                isPassword: false,
                editingController: _phonecontroller,
                textInputType: TextInputType.phone,
              ),
              SizedBox(
                height: 24,
              ),

              TextInputField(
                hintText: 'НУУЦ ҮГ',
                isPassword: true,
                editingController: _passcontroller,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 350,
                  padding: EdgeInsets.symmetric(vertical: 13),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    gradient: LinearGradient(
                        begin: Alignment(1.00, 0.02),
                        end: Alignment(-1.00, -0.02),
                        colors: [Color(0xFFE86B02), Color(0xFFFA9541)]),
                    // color: LinearGradient(colors: [Color(0xE86B02),Color(0xFA9541)])
                  ),
                  child: Text(
                    'Нэвтрэх',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Эсвэл'),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Text(
                    'Шинэ хэрэглэгч мөн үү?',
                    style: TextStyle(fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()));
                    },
                    child: const GradientText('Бүртгүүлэх', 18),
                  )
                ],
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
