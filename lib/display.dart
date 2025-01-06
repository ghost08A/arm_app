import 'package:flutter/material.dart';

class display extends StatefulWidget {
  final String? name;
  final int? age;

  const display({super.key, this.name, this.age,});

  @override
  State<display> createState() => displayState();
}

class displayState extends State<display> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text("EV Charging",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
        body: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Hi ${widget.name} Age: ${widget.age}",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ],
            )));
  }
}
