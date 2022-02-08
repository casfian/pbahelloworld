import 'package:flutter/material.dart';

class Pizza extends StatelessWidget {
  const Pizza({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text('Pizza', style: TextStyle(color: Colors.black),),
          backgroundColor: const Color.fromRGBO(245, 245, 245, 1.0),
          elevation: 0,
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Image.asset('assets/images/pizza1.png'),
              title: Text('Pizza 1: Chicken Pizza'),
              subtitle: Text('Harga RM12:00'),
              trailing: Text('Buy NOW'),
            ),
            ListTile(
              leading: Image.asset('assets/images/pizza2.png'),
              title: Text('Pizza 2: Hawaiian Pizza'),
              subtitle: Text('Harga RM14:00'),
              trailing: Text('Buy NOW'),
            ),
            ListTile(
              leading: Image.asset('assets/images/pizza3.png'),
              title: Text('Pizza 3: Hawaiian Pizza'),
              subtitle: Text('Harga RM16:00'),
              trailing: Text('Buy NOW'),
            ),
          ],
        ),
    );
  }
}