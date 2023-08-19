import 'package:flutter/material.dart';
import 'package:icodegram_app/pages/login.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: LoginPage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color.fromRGBO(0, 0, 0, 1),
        textTheme: Typography().white.apply(fontFamily: 'Rubik')),
  ));
}
