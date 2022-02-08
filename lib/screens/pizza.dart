import 'package:flutter/material.dart';

class Pizza extends StatelessWidget {
  const Pizza({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pizza'),
        ),
        body: Center(
          child: Container(
            child: const Text('Pizza'),
          ),
        ),
      
    );
  }
}