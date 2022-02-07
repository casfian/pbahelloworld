import 'package:flutter/material.dart';

class Row2Widget extends StatelessWidget {
  const Row2Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            width: 85,
            height: 43,
            decoration: BoxDecoration(
              color: Colors.yellow,
              border: Border.all(color: Colors.black),
            ),
            child: const Center(child: Text('All'))),
        Container(
            width: 85,
            height: 43,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.green),
            ),
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/pizza.png',
                  width: 20,
                ),
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text('Pizza'),
                ),
              ],
            ))),
        Container(
            width: 85,
            height: 43,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue),
            ),
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/burger.png',
                  width: 20,
                ),
                const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text('Burgers'),
                ),
              ],
            ))),
      ],
    );
  }
}
