import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('iCodegram',
                style: TextStyle(
                  fontFamily: 'Lobster',
                  fontWeight: FontWeight.w400,
                  fontSize: 35,
                  color: Colors.white,
                )),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              width: 50,
              height: 50,
              child: Stack(
                children: <Widget>[
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.white,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Colors.black.withAlpha(0),
                          Colors.black12,
                          Colors.black45
                        ],
                      ),
                    ),
                    child: const Text(
                      'Foreground Text',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset('assets/image/Inner_Oval1.png'),
            Image.asset('assets/image/Inner_Oval1.png'),
            Image.asset('assets/image/Inner_Oval1.png')
          ],
        ),
      )),
    );
  }
}
