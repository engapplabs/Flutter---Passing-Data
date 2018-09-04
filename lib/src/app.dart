import 'package:flutter/material.dart';
import 'screens/mainScreen/mainScreen.dart';

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: new MainScreen(),
      ),
    );
  }
}
