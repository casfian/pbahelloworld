import 'package:flutter/material.dart';

class Row1Widget extends StatelessWidget {
  const Row1Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'Fast & Delicious \nFood',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
