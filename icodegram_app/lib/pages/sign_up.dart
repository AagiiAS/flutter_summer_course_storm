import 'package:flutter/material.dart';

import '../component/gradient_text.dart';
import '../component/text_input_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _phonecontroller = TextEditingController();
    final TextEditingController _passcontroller = TextEditingController();
    final TextEditingController _usercontroller = TextEditingController();
    final TextEditingController _repeatcontroller = TextEditingController();
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
                hintText: 'ХЭРЭГЛЭГЧИЙН НЭР',
                isPassword: false,
                editingController: _usercontroller,
                textInputType: TextInputType.text,
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
              TextInputField(
                hintText: 'НУУЦ ҮГ ДАВТАХ',
                isPassword: true,
                editingController: _repeatcontroller,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 24,
              ),

              InkWell(
                onTap: () {},
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
                    'Бүртгүүлэх',
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Бүртгэлтэй юу?',
                    style: TextStyle(fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const GradientText('Нэвтрэх', 18),
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
