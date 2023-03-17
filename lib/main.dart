// import 'dart:html';


import 'package:app2022/layout/home_layout.dart';
import 'package:app2022/modules/home/Test.dart';
import 'package:app2022/modules/login/Login.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Test(),
    );
  }
}
