import 'package:flutter/material.dart';
import 'package:wordfind_app/Gradient_letter.dart';
import 'package:wordfind_app/gradient_text.dart';
import 'package:wordfind_app/input_filed.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/image/arrow_back.png'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: SizedBox(
          height: 50,
          child: Image.asset('assets/image/game_logo.png'),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/image/back2.png'), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 50)),
              Image.asset('assets/image/iCodeGuyHead.png'),
              Padding(padding: EdgeInsets.only(top: 20)),
              GradientText('Player Name', 20.0),
              Padding(padding: EdgeInsets.only(top: 20)),
              InputField()
            ],
          ),
        ),
      ),
      floatingActionButton: StartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 60,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xFFE86B02), Color(0xFFFA9541)]),
          borderRadius: BorderRadius.circular(25)),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          'START',
          style: TextStyle(
              fontFamily: 'Nunito', fontSize: 24, fontWeight: FontWeight.w700),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25))),
      ),
    );
  }
}
