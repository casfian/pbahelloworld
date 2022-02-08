import 'package:flutter/material.dart';
import 'package:helloworld/models/burger.dart';
import 'package:helloworld/screens/buynow.dart';

class Burgers extends StatefulWidget {
  const Burgers({Key? key}) : super(key: key);

  @override
  State<Burgers> createState() => _BurgersState();
}

class _BurgersState extends State<Burgers> {
  List<Burger> burgersArray = [
    Burger('Burger 1', '12.00', 'burger.png'),
    Burger('Burger 2', '12.60', 'burger.png'),
    Burger('Burger 3', '16.00', 'burger.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Burgers',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(245, 245, 245, 1.0),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: burgersArray.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset('assets/images/burger.png'),
            title: Text(burgersArray[index].nama),
            subtitle: Text(burgersArray[index].harga),
            trailing: ElevatedButton(
                onPressed: () {
                  print('I buy burger $index');
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BuyNow(selected: burgersArray[index] )));
                },
                child: Text('Buy now')),
          );
        },
      ),
    );
  }
}
