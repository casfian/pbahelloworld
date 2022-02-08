import 'package:flutter/material.dart';
import 'package:helloworld/screens/burgers.dart';
import 'package:helloworld/screens/pizza.dart';
import 'package:helloworld/screens/reviews.dart';
import 'package:helloworld/widgets/row1_widget.dart';
import 'package:helloworld/widgets/row2_widget.dart';
import 'package:helloworld/widgets/row3_widget.dart';
import 'package:helloworld/widgets/row4_widget.dart';
import 'package:helloworld/widgets/row5_widget.dart';
import 'package:helloworld/widgets/row6_widget.dart';

//secondary class
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Rabihah Diner',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(245, 245, 245, 1.0),
        //backgroundColor: Colors.blue,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ))
        ],
      ),
      drawer: Drawer(
        child: Container(
          child: ListView(
            children: [
              const ListTile(
                leading: Icon(Icons.home, size: 33, color: Colors.orange,
                ),
                title: Text('Home'),
              ),
              ListTile(
                leading: Image.asset('assets/images/pizza.png'),
                title:  const Text('Pizza'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Pizza()));
                },
              ),
              ListTile(
                leading: Image.asset('assets/images/burger.png'),
                title: const Text('Burgers'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Burgers()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.list, size: 32, color: Colors.orange,),
                title: const Text('Reviews'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Reviews()));
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center, //column
              // crossAxisAlignment: CrossAxisAlignment.center, //row
              children: const [
                //Row1
                Row1Widget(),

                SizedBox(
                  height: 30,
                ),

                //Row2
                Row2Widget(),

                SizedBox(
                  height: 30,
                ),

                //Row3
                Row3Widget(),

                SizedBox(
                  height: 30,
                ),

                //Row4
                Row4Widget(),

                SizedBox(
                  height: 30,
                ),

                //Row5
                Row5Widget(),

                SizedBox(
                  height: 30,
                ),

                //Row6
                Row6Widget(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          //code
          print('I click Button Button');
        },
        child: const Icon(Icons.forward),
      ),
    );
  }
}
