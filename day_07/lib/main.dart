import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Flutter DEMO',
    theme: ThemeData(
      primaryColor: Colors.green,

    ),
    home: MyHomePage(title: 'Flutter',) ,
  );
  }

}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

   final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: Text(widget.title),
  ),
  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('u have'), 
        Text('$_counter'),
      

      ],
    ),
  ),
  floatingActionButton: FloatingActionButton(onPressed: () {  }, ),
);
  }
}






