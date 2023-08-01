import 'package:flutter/material.dart';
import 'package:day_16_flutter/Stop_watch.dart';

void main() {
  runApp(const StopwatchApp());
}

class StopwatchApp extends StatelessWidget {
  const StopwatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stopwatch(),
    );
  }
}

