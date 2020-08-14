import 'package:coke_learning_app/pages/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(new Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "coke learning",
      home: new Loginpage(),
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
    );
  }
}
