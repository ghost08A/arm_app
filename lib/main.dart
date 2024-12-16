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
        /*appBar: AppBar(
          centerTitle: true,
          title: Image.asset(
            'assets/images/peaLOGO.png',
            width: 120,
          ),
          //title: Text('Arm app'),
          // leading: IconButton(onPressed: (){debugPrint('clicked menu buttton');}, icon:const Icon(Icons.menu)),
          // actions: [IconButton(onPressed: (){debugPrint('clicked menu buttton');}, icon:const Icon(Icons.safety_check)),
          //           IconButton(onPressed: (){debugPrint('clicked menu buttton');}, icon:const Icon(Icons.offline_bolt)),
          //           ],
        ),*/

        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Name",
                hintText: ' Enter Name',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.home), iconSize: 40),
                    Text("Home",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search),
                        iconSize: 40),
                    Text("search",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.info), iconSize: 40),
                    Text("Information",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ],
                )
              ],
            ),
            /*content*/
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // Align texts to the start
                      children: [
                        Text(
                          "วันที่ชาร์จ", // First Text widget
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        SizedBox(
                            height: 10), // Adds spacing between the two texts
                        Text(
                          "วันที่ชาร์จ", // Second Text widget
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // Align texts to the start
                      children: [
                        Text(
                          "วันที่ชาร์จ", // First Text widget
                          style: TextStyle(
                               fontSize: 20),
                        ),
                        SizedBox(
                            height: 10), // Adds spacing between the two texts
                        Text(
                          "วันที่ชาร์จ", // Second Text widget
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Text(
                      "วันที่ชาร์จ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Text(
                      "วันที่ชาร์จ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Text(
                      "วันที่ชาร์จ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Text(
                      "วันที่ชาร์จ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Text(
                      "วันที่ชาร์จ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Text(
                      "วันที่ชาร์จ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),

        /*body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/PEA1.jpg',
              ),
              const Text("ขอบคุณที้ใช้บริการ",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              const Text("เรายินดีที่ได้เป็นส่วนหนึ่งในการเดินทางของคุณ",
                  style: TextStyle(
                    fontSize: 20,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("สรุปรายละเอียด",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  //   ElevatedButton(onPressed: (){debugPrint('clicked buttton');}, child: const Text('OK',style: TextStyle(fontSize: 20),)),
                  // IconButton(onPressed:(){},
                  // icon: Icon(Icons.favorite),iconSize: 40,)
                ],
              ),
             
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //ElevatedButton(onPressed: (){debugPrint('clicked buttton');}, child: const Text('OK',style: TextStyle(fontSize: 20),)),
                  
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.calendar_month),
                    iconSize: 40,
                  ),
                  Expanded(child: 
                  Card(child:  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                    child: Text(
                    "วันที่ชาร์จ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),),),),
                   
                  
                  Spacer(),
                  Text(
                    "9/12/2567",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.ev_station),
                      iconSize: 40),
                  Text("สถานีชาร์จ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Spacer(),
                  Text("PEA VOLIA บางจาก",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.bolt), iconSize: 40),
                  Text("ประเภทหัวชาร์จ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Spacer(),
                  Text("CCS2",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.access_time),
                      iconSize: 40),
                  Text("ระยะเวลาการชาร์จ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Spacer(),
                  Text("00:12:32",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ],
              ),
              const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Name",
                hintText: ' Enter Name',
              ),
            ),
            ],
            
          ),
        ), */
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('FAB pressed');
          },
          child: const Icon(Icons.shopping_cart),
        ),
      ),
    );
  }
}






// void main(){
//   runApp(const MaterialApp(home:Scaffold(body: Text('\n\n\n\nHello world')) ));
// }
