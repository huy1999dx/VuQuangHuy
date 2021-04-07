import 'package:du_an2/modules/screens/drawer.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

class huyy {
  @override
  Widget build(BuildContext context) {
    void pape1() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => NavDrawerExample()),
      );
    }
  }
}
