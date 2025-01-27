import 'package:arm_app/detall.dart';
import 'package:flutter/material.dart';

class listView extends StatefulWidget {
  const listView({super.key});

  @override
  State<listView> createState() => listViewState();
}

class listViewState extends State<listView> {

  
  final List<String> prodacts = <String>[
    "Voramate Phothong",
    "nickname: arm",
    "age: 21"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text("EV Charging",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
        body:ListView.separated(
          itemCount:  prodacts.length,
          itemBuilder: (context,index) => ListTile(
            title: Text(prodacts[index],style: TextStyle(fontSize: 20),),
          ),
          separatorBuilder: (context,int index) => const Divider(),
        )
        /*ListView(
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text("My Profile",style: TextStyle(fontSize: 20)),
              subtitle: Text("View/Edit your profile"),
              trailing: Icon(Icons.arrow_forward_ios),
              tileColor: Colors.green[50],
              onTap: () =>Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Detall())),
            ),
            ListTile(
              title: Text("Arm",style: TextStyle(fontSize: 20)),
            ),
             ListTile(
              title: Text("Arm",style: TextStyle(fontSize: 20)),
              tileColor: Colors.green,
            ),
          ],
        ) */
        );
  }
}