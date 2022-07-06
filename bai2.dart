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
          child: Column(
              // mainAxisSize: MainAxisSize.min,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    const Icon(Icons.restaurant_menu,
                        color: Color.fromRGBO(77, 152, 235, 1), size: 30.0),
                    Column(children: const [
                      Text(
                        '1625 Main Street',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(67, 67, 66, 1),
                            fontFamily: 'San Serif'),
                      ),
                      Text(
                        'My City, CA 99984',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(173, 174, 174, 1),
                            fontFamily: 'San Serif'),
                      )
                    ]),
                  ],
                ),
                const Divider(
                  height: 20,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                  color: Color.fromRGBO(67, 67, 66, 1),
                ),
                Row(
                  children: const [
                    Icon(Icons.contact_phone,
                        color: Color.fromRGBO(77, 152, 235, 1), size: 30.0),
                    Text(
                      '(408) 555-1212',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(67, 67, 66, 1),
                          fontFamily: 'San Serif'),
                    )
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.contact_mail,
                        color: Color.fromRGBO(77, 152, 235, 1), size: 30.0),
                    Text(
                      'costa@example.com',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(67, 67, 66, 1),
                          fontFamily: 'San Serif'),
                    )
                  ],
                ),
              ]),
        ));
  }
}
