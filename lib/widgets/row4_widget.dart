import 'package:flutter/material.dart';

class Row4Widget extends StatelessWidget {
  const Row4Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            width: 252,
            height: 148,
            child: Center(child: Image.asset('assets/images/pizza1.png'))),
        Container(
            width: 252,
            height: 148,
            child: Center(child: Image.asset('assets/images/pizza2.png'))),
      ],
    );
  }
}
