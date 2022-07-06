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
          // width: double.infinity,
          color: Colors.white,
          // alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 20.0),
          // decoration: BoxDecoration(
          //   border: Border.all(width: 5.0, color: Color(0xFFFF7F7F7F)),
          // ),
          child: Row(
            // mainAxisSize: MainAxisSize.min,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: Column(
                children: const [
                  Icon(Icons.call,
                      color: Color.fromRGBO(77, 152, 235, 1), size: 30.0),
                  Text(
                    'CALL',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(77, 152, 235, 1),
                        fontFamily: 'San Serif'),
                  ),
                ],
              )),
              Expanded(
                  child: Column(
                children: const [
                  Icon(Icons.near_me,
                      color: Color.fromRGBO(77, 152, 235, 1), size: 30.0),
                  Text(
                    'ROUTE',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(77, 152, 235, 1),
                        fontFamily: 'San Serif'),
                  ),
                ],
              )),
              Expanded(
                  child: Column(
                children: const [
                  Icon(Icons.share,
                      color: Color.fromRGBO(77, 152, 235, 1), size: 30.0),
                  Text(
                    'SHARE',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(77, 152, 235, 1),
                        fontFamily: 'San Serif'),
                  ),
                ],
              ))
            ],
          ),
        ));
  }
}
