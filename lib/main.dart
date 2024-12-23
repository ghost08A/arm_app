import 'package:arm_app/about_page.dart';
import 'package:arm_app/detall.dart';
import 'package:arm_app/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
//assets/images/peaLOGO.png
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true, appBarTheme: AppBarTheme(color: Colors.blue)),
      //colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(221, 236, 15, 15)),
      
      home: Detall(),
    );
  }
}






// void main(){
//   runApp(const MaterialApp(home:Scaffold(body: Text('\n\n\n\nHello world')) ));
// }
