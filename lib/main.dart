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
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Image.asset('assets/images/peaLOGO.png',width: 120,),
            //title: Text('Arm app'),
            // leading: IconButton(onPressed: (){debugPrint('clicked menu buttton');}, icon:const Icon(Icons.menu)),
            // actions: [IconButton(onPressed: (){debugPrint('clicked menu buttton');}, icon:const Icon(Icons.safety_check)),
            //           IconButton(onPressed: (){debugPrint('clicked menu buttton');}, icon:const Icon(Icons.offline_bolt)),
            //           ],
           ),
          body: Column(
            children: [
              Image.asset('assets/images/PEA1.jpg',),
              const Text("ขอบคุณที้ใช้บริการ",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              const Text("เรายินดีที่ได้เป็นส่วนหนึ่งในการเดินทางของคุณ",style: TextStyle(fontSize: 20,)),   
              
              Row(mainAxisAlignment:  MainAxisAlignment.start ,
                children: [
                  const Text("สรุปรายละเอียด",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              //   ElevatedButton(onPressed: (){debugPrint('clicked buttton');}, child: const Text('OK',style: TextStyle(fontSize: 20),)),
              // IconButton(onPressed:(){},
              // icon: Icon(Icons.favorite),iconSize: 40,)
              ],),
              Row(mainAxisAlignment:  MainAxisAlignment.start,
              children: [
              //ElevatedButton(onPressed: (){debugPrint('clicked buttton');}, child: const Text('OK',style: TextStyle(fontSize: 20),)),
              IconButton(onPressed:(){},
              icon: Icon(Icons.calendar_month),iconSize: 40,),
              Text("วันที่ขับรถ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Text("9/12/2567",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              
              ],)
              
            ],
            
    
          ),
          floatingActionButton: FloatingActionButton(onPressed: (){debugPrint('FAB pressed');}, child:const Icon(Icons.shopping_cart),),
          
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'arm count down:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ));
  }
}

// void main(){
//   runApp(const MaterialApp(home:Scaffold(body: Text('\n\n\n\nHello world')) ));
// }
