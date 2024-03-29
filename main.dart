import 'dart:typed_data';

import 'package:flutter/material.dart';

void main() {
//Bai 1
//De
  String str =
      " đây là kết quả của buổi học thứ 2 về dart: dart basics (phần 1)...";

  /// hãy viết code bằng tất cả các cách có thể để in ra:
  /// `Đây là kết quả buổi học thứ 2 về Dart: DART BASIC (phần 1)`
//Giai
  String strTrim = str.trim();
  List strList = strTrim.split(' ');
  String strList_1 = strList[0].toString();
  String s1 =
      '${strList_1.substring(0, 1).toUpperCase()}${strList_1.substring(1, 3)}';
  String s2 = strList[1].toString();
  String s3 = strList[2].toString();
  String s4 = strList[3].toString();
  String s5 = strList[4].toString();
  String s6 = strList[5].toString();
  String s7 = strList[6].toString();
  String s8 = strList[7].toString();
  String s9 = strList[8].toString();
  String s10 = strList[9].toString();
  String strList_11 = strList[10].toString();
  String s11 =
      '${strList_11[0].toString().toUpperCase()}${strList_11.toString().substring(1)}';
  String s12 = strList[11].toString().toUpperCase();
  String s13 = strList[12].toString().toUpperCase();
  String s14 = strList[13].toString();
  String strList_15 = strList[14].toString();
  String s15 = strList_15.substring(0, 2);
  print('"$s1 $s2 $s3 $s4 $s5 $s6 $s7 $s8 $s9 $s10 $s11 $s12 $s13 $s14 $s15"');

//Bai 2:
//De
  List arr = [
    1,
    2,
    3,
    "đây",
    "kết",
    "là",
    true,
    false,
    {true: "buổi", 1: "học", 10.2: ":", false: "dart basics"},
    ['thứ', 'quả', 'về'],
    "(phần 1)",
    {"flutter": "dart"},
  ];

  /// Lấy data từ array trên và tạo ra 1 String với giá trị sau:
  /// Đây là kết quả buổi học thứ 2 về Dart: DART BASIC (phần 1)

  // ví dụ
  String s_1 =
      "${arr[3].toString().substring(0, 1).toUpperCase()}${arr[3].toString().substring(1, 3)}";

//Giai
  String s_2 = arr[5].toString();
  String s_3 = arr[4].toString();
  List list1 = arr[9];
  String s_4 = list1[1].toString();
  Map map1 = arr[8];
  String s_5 = map1[true];
  String s_6 = map1[1];
  String s_7 = list1[0].toString();
  String s_8 = arr[1].toString();
  String s_9 = list1[2].toString();
  Map map2 = arr[11];
  String s_10 =
      "${map2["flutter"].toString().substring(0, 1).toUpperCase()}${map2["flutter"].toString().substring(1)}";
  String s_11 = map1[10.2].toString().toUpperCase();
  String s_12 = map1[false].toString().toUpperCase();
  String s_13 = arr[10];

  print(
      '"$s_1 $s_2 $s_3 $s_4 $s_5 $s_6 $s_7 $s_8 $s_9 $s_10$s_11 $s_12 $s_13"');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
