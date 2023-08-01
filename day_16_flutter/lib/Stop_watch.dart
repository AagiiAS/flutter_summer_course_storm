import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:ui';
import 'package:flutter/src/material/colors.dart';

class Stopwatch extends StatefulWidget {
  const Stopwatch({super.key});

  @override
  State<Stopwatch> createState() => _StopwatchState(); //arrow function
}

class _StopwatchState extends State<Stopwatch> {
  int seconds = 0;
  bool _isTicking = true;
  late Timer timer;

  void _onTick(Timer timer) {
    setState(() {
      ++seconds;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stopwatch'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$seconds ${_secondsText()}',
              style: Theme.of(context).textTheme.headlineMedium),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: _isTicking ? _startTimer : null,
                child: Text(
                  'Start',
                ),
              ),
              SizedBox(
                width: 20,
              ),
              TextButton(
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
                onPressed: _isTicking ? null : _stopTimer,
                child: Text(
                  'Stop',
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }

  void _startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), _onTick);
    setState(() {
      _isTicking = false;
    });
  }

  void _stopTimer() {
    timer.cancel();
    setState(() {
      _isTicking = true;
    });
  }

  String _secondsText() => seconds == 1 ? 'second' : 'seconds';
  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}
