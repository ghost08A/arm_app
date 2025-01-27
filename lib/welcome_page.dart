import 'package:arm_app/display.dart';
import 'package:flutter/material.dart';


class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key,});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String _output = '';
  final _textController = TextEditingController();
  final age = TextEditingController();

 /* @override
   void initState(){
    super.initState();
    debugPrint('initState');
    _output = '';
   }
  

  @override
  void dispose(){
    _textController.dispose();
    age.dispose();
    super.dispose;
  }*/

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
                  TextField(
                    controller: age,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Age",
                      hintText: ' Enter Age',
                    ),
                  ),
                  Text('$_output'),
                  ElevatedButton(
                    onPressed: () {
                      String input = _textController.text;
                      int _age = int.parse(age.text);
                      debugPrint('pressed button .. $input');
                      /*setState(() {
                        _output = "hi $input kub";
                      });*/
                      Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context) => display(
                        name: input,
                        age: _age,
                      )),
                      (route)=>false);
                    },
                    child: const Icon(Icons.search),
                  )
                ],
              )),
        ));
  }
}
