import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Reviews',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(245, 245, 245, 1.0),
        elevation: 0,
        ),
        body: Center(
          child: Container(
            child: const Text('Reviews'),
          ),
        
      ),
    );
  }
}