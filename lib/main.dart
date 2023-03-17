import 'package:flutter/material.dart';
import 'package:tab_bar_screen/first_screen.dart';
//import 'package:tab_bar_screen/bottom_navigationbar_screen.dart';
//import 'package:tab_bar_screen/list_view_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //primarySwatch: Colors.blue,
          ),
      home: const FirstScreen(),
    );
  }
}
