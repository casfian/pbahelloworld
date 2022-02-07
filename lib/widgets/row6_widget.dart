import 'package:flutter/material.dart';

class Row6Widget extends StatelessWidget {
  const Row6Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 303,
            height: 223,
            child: Center(child: Image.asset('assets/images/pizza3.png'))),
      ],
    );
  }
}
