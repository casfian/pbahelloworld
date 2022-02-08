import 'package:flutter/material.dart';

class Burgers extends StatelessWidget {
  const Burgers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Burgers'),
        ),
        body: Center(
          child: Container(
            child: const Text('burgers'),
          ),
        ),
      
    );
  }
}