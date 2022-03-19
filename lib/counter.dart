import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text('Is Darkmode'),
              Switch(
                value: isDark,
                onChanged: (value) {
                  setState(() {
                    isDark = value;
                  });
                },
              )
            ],
          ),
          isDark ? Text('welcome to dark Mode') : Text('Goodbye to darkmode'),
        ],
      ),
    );
  }
}
