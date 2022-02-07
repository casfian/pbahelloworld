import 'package:flutter/material.dart';

class Row5Widget extends StatelessWidget {
  const Row5Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'All Restaurants',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
