import 'package:flutter/material.dart';
import 'package:helloworld/screens/burgers.dart';
import 'package:helloworld/screens/pizza.dart';

class Row2Widget extends StatelessWidget {
  const Row2Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            //code here
            print('I clicked All');
          },
          child: Container(
              width: 85,
              height: 43,
              decoration: BoxDecoration(
                color: Colors.yellow,
                border: Border.all(color: Colors.black),
              ),
              child: const Center(child: Text('All'))),
        ),
        InkWell(
          onTap: () {
            //code here
            print('I clicked Pizza');
            Navigator.push(context, MaterialPageRoute(builder:(context)=>const Pizza()));
          },
          child: Container(
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
        ),
        InkWell(
          onTap: () {
            print('I clicked burgers');
            Navigator.push(context, MaterialPageRoute(builder:(context)=>const Burgers()));
          },
          child: Container(
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
        ),
      ],
    );
  }
}
