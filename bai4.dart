import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo1',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          width: 300,
          height: 300,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://images.samsung.com/is/image/samsung/p5/latin_en/tvs/tv-buying-guide/best-picture-quality-tv/2019-tv-buying-guide-the-best-tv-picture-quality-f00-pc.jpg')),
          ),
          // width: double.infinity,
          // color: Colors.white,
          // alignment: Alignment.center,
          // margin: const EdgeInsets.only(top: 20.0),
          // decoration: BoxDecoration(
          //   border: Border.all(width: 5.0, color: Color(0xFFFF7F7F7F)),
          // ),
          child: Container(
            width: 50,
            margin: const EdgeInsets.only(left: 200, top: 200),
            decoration: const BoxDecoration(
                shape: BoxShape.rectangle, color: Colors.black87),
            child: const Text(
              'Mia B',
              style: TextStyle(
                  fontSize: 22,
                  color: Color.fromARGB(255, 248, 10, 10),
                  fontFamily: 'San Serif'),
            ),
          ),
        ));
  }
}
