import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Reviews extends StatefulWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  var data;

  //buat function
  getReview() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await http.get(url);
    //print('Response status: ${response.statusCode}');
    //print('Response body: ${response.body}');

    //kita hanya nak data yg dlm response body
    //l=kita convert to json supaya senang nk parsing nanti
    data = json.decode(response.body);

    return data;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //getReview();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Reviews',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(245, 245, 245, 1.0),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                //add review
              },
              icon: const Icon(Icons.add)),
        ],
      ),
      body: FutureBuilder(
          future: getReview(),
          builder: (context, AsyncSnapshot snapshot) {
            print(snapshot.data);
            if (snapshot.connectionState == ConnectionState.done) {
              return ListView.builder(
                  itemCount: snapshot.data == null ? 0 : snapshot.data.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        leading: const Icon(Icons.person, size: 32, color: Colors.orange,) ,
                          title: Text(
                            snapshot.data[index]['title'],
                            style: const TextStyle(color: Colors.blue),
                          ),
                          subtitle: Text(snapshot.data[index]['body'])),
                    );
                  });
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}