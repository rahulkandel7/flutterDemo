import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  static const routeName = '/second';
  @override
  Widget build(BuildContext context) {
    String text = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text(text),
      ),
      body: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text('Go Back'),
      ),
    );
  }
}
