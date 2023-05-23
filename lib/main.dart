import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: ''),
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
  List color_list = [
    Colors.green,
    Colors.blue,
    Colors.redAccent,
    Colors.purpleAccent,
    Colors.pink,
    Colors.black,
    Colors.blueGrey,
    Colors.indigo,
    Colors.yellow,
    Colors.amber,
    Colors.orange,
    Colors.brown,
    Colors.teal,
    Colors.cyanAccent
  ];
  List Icon_list = [
    Icons.not_interested,
    Icons.home,
    Icons.menu,
    Icons.stop,
    Icons.play_arrow,
    Icons.add,
    Icons.album,
    Icons.arrow_back_ios,
    Icons.arrow_forward_ios,
    Icons.access_alarm,
    Icons.ac_unit,
    Icons.mic_none,
    Icons.access_time_outlined,
  ];
  Color active_color = Colors.white;

  var active_icon = Icons.not_interested;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Icons Editor',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              )),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 0),
                          spreadRadius: 1,
                          blurRadius: 6),
                    ],
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: Icon(
                    active_icon,
                    color: active_color,
                    size: 120,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 0),
                          spreadRadius: 1,
                          blurRadius: 6),
                    ],
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Select Color",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 0),
                          spreadRadius: 1,
                          blurRadius: 6),
                    ],
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: color_list.map((e) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              active_color = e;
                            });
                          },
                          child: Container(
                            width: 100,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black45,
                                    offset: Offset(0, 0),
                                    spreadRadius: 1,
                                    blurRadius: 6),
                              ],
                              color: e,
                            ),
                            alignment: Alignment.center,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 0),
                          spreadRadius: 1,
                          blurRadius: 6),
                    ],
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Select Icon",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 0),
                          spreadRadius: 1,
                          blurRadius: 6),
                    ],
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: Icon_list.map((e) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              active_icon = e;
                            });
                          },
                          child: Container(
                            width: 100,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black45,
                                    offset: Offset(0, 0),
                                    spreadRadius: 1,
                                    blurRadius: 6),
                              ],
                              color: Colors.white,
                            ),
                            alignment: Alignment.center,
                            child: Icon(
                              e,
                              size: 60,
                              color: Colors.indigo,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
