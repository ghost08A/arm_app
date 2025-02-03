import 'package:flutter/material.dart';

class network_page extends StatefulWidget {
  const network_page({super.key});

  @override
  State<network_page> createState() => network_pageState();
}

class network_pageState extends State<network_page> {
  // Simulating an asynchronous operation that returns a Future
  Future<String> fetchData() async {
    await Future.delayed(const Duration(seconds: 3));
    return "Hello, FutureBuilder!";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('FutureBuilder Page'),
        ),
        body: Center(
          child: FutureBuilder(
            future: fetchData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text('Result: ${snapshot.data}',
                    style: TextStyle(fontSize: 20));
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const CircularProgressIndicator();
            },
          ),
        ));
  }
}
