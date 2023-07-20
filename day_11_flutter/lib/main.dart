import 'package:flutter/material.dart';

void main() {
  const Text myText = Text('Hello Storm');
  const Center myCenteredText = Center(
    child: myText,
  );
  const Scaffold myScaffold = Scaffold(
    body: myCenteredText,
  );
  const MaterialApp myApp = MaterialApp(
      home: myScaffold
  );
 const MyCrazyApp crazyApp = MyCrazyApp();
  runApp(crazyApp);
}

// stateless widget
class MyCrazyApp extends StatelessWidget{
  const MyCrazyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello Storm', style:  TextStyle(
              fontSize: 30,
            color: Color(0xD80813E8),
            fontFamily: 'Ribeye',
            fontWeight: FontWeight.w900


          ),
          ),
        ),
      appBar: AppBar(
        title: Text('Hello Stormers', style: TextStyle(
          fontSize: 20,
          fontFamily: 'Nunito'
        ),),
      ),
        floatingActionButton: FloatingActionButton(onPressed: printHello,
          child: Image.asset('assets/thump.png', width: 200,)

        ),
      ),

    );
  }

}

void printHello(){
  print('Hello Storm');
}