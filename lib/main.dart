import 'package:flutter/material.dart';

import 'views/homepage.dart';

//C
void main() {
  runApp(const MyApp());
}

//OOPS
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mero Media',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
