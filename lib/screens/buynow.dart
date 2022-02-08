import 'package:flutter/material.dart';
import 'package:helloworld/models/burger.dart';

class BuyNow extends StatefulWidget {
  //1. buat parameter utk kelas ne
  BuyNow({Key? key, required this.selected}) : super(key: key);

  Burger selected;

  @override
  State<BuyNow> createState() => _BuyNowState();
}

class _BuyNowState extends State<BuyNow> {
  final quantityController = TextEditingController();
  double amount = 0.0;

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
          const SizedBox(
            height: 40,
          ),
          Image.asset('assets/images/${widget.selected.gambar}'),
          Text(
            widget.selected.nama,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text('RM ${widget.selected.harga}'),
          const SizedBox(
            height: 30,
          ),
          const Text('Quantity'),
          Padding(
            padding: EdgeInsets.fromLTRB(150, 10, 150, 0),
            child: TextField(
              controller: quantityController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                print(quantityController.text);
                amount = double.parse(quantityController.text) * double.parse(widget.selected.harga);
                setState(() {
                  //refresh screen
                });
              },
              child: const Text('Buy Now')),
              const SizedBox(height: 20,),
          Text('Quantity: ${quantityController.text}'),
          Text('Amount: RM ${amount.toString()}'),
        ],
      )),
    );
  }
}
