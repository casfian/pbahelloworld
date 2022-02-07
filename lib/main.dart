import 'package:flutter/material.dart';
import 'package:helloworld/home.dart';

void main() => runApp(const MyApp());

//Root class
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

