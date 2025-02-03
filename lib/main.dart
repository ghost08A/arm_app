import 'package:arm_app/about_page.dart';
import 'package:arm_app/detail_page.dart';
import 'package:arm_app/detall.dart';
import 'package:arm_app/display.dart';
import 'package:arm_app/http_basic.dart';
import 'package:arm_app/listView.dart';
import 'package:arm_app/my_listpage.dart';
import 'package:arm_app/network_page.dart';
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
      initialRoute: '/my_listpage',
      routes: {
        '/': (context) => Detall(),
        '/welcome': (context) => WelcomePage(),
        '/display': (context) => display(),
        '/listView': (context) => listView(),
        '/network_page': (context) => network_page(),
        '/http_basic': (context) => httpBasic(),
        '/detail_page': (context) => DetailPage(productId: 0),
        '/my_listpage': (context) => MyListPage(),
//_MyFutureBuilderPageState
      },
      //home: Detall(),
    );
  }
}






// void main(){
//   runApp(const MaterialApp(home:Scaffold(body: Text('\n\n\n\nHello world')) ));
// }
