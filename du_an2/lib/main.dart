import 'package:du_an2/modules/screens/log_in.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: log_in(),
      ),
    );
  }
}
