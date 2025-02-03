import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import "dart:convert";

class httpBasic extends StatefulWidget {
  const httpBasic({super.key});

  @override
  State<httpBasic> createState() => _httpBasicState();
}

class _httpBasicState extends State<httpBasic>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  Future<String> fetchData() async {
    final response = 
     await http.get(Uri.parse("​https://itpart.net/mobile/api/products.php"));
    if(response == 200){
      String strBody = response.body.toString();
      debugPrint(strBody);
      return strBody;
    }else {
      throw Exception("proplem");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: const Text('FutureBuilder Page'),
        ),
        body: Center(
          child: FutureBuilder(
            future: fetchData(),
            builder: (context, snapshot) {
             if (snapshot.connectionState == ConnectionState.waiting){
                return const CircularProgressIndicator();
             }else if(snapshot.hasData){
              return Text("${snapshot.data}",style: TextStyle(fontSize: 18),);
             }else if(snapshot.hasError){
              return Text("${snapshot.error}",style: TextStyle(fontSize: 18),);
             }
             return const Text("No data availble!");
            },
          ),
        ));
  }
}