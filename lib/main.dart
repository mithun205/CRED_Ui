import 'package:cred_assignment/pages/page_1.dart';
import 'package:cred_assignment/pages/page_2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page_1(),
      debugShowCheckedModeBanner: false,

      routes: {
        "/page_2": (context) => Page_2(),
        
        "/page 1" :(context) =>  Page_1()
      },
    );
  }
}