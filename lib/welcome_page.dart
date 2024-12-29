import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String _output = '';
  final _textController = TextEditingController();
  final _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text("EV Charging",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
        body: Center(
          child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("EV Charging",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Name",
                      hintText: ' Enter Name',
                    ),
                  ),
                  Text('$_output'),
                  ElevatedButton(
                    onPressed: () {
                      String input = _textController.text;
                      debugPrint('pressed button .. $input');
                      setState(() {
                        _output = "hi $input kub";
                      });
                    },
                    child: const Icon(Icons.search),
                  )
                ],
              )),
        ));
  }
}
