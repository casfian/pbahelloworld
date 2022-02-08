import 'package:flutter/material.dart';

class BuyNow extends StatelessWidget {
  const BuyNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'buy Now',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(245, 245, 245, 1.0),
        elevation: 0,
      ),
      body: Center(
          child: Column(
        children: [
          const SizedBox(height: 40,),
          const Text(
            'Burger X',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30,),
          const Text('Quantity'),
          const Padding(
            padding: EdgeInsets.fromLTRB(150, 0, 150, 0),
            child: TextField(),
          ),
          const SizedBox(height: 30,),
          ElevatedButton(
              onPressed: () {
                //code
              },
              child: const Text('Buy Now')),
        ],
      )),
    );
  }
}
