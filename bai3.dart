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
          decoration: const BoxDecoration(
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
          child: Column(
              // mainAxisSize: MainAxisSize.min,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Container(
                      // height: 150.0,
                      // width: 300.0,
                      margin:
                          const EdgeInsets.only(left: 40, bottom: 60, top: 20),
                      color: Colors.transparent,
                      child: Container(
                          width: 130,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(220, 233, 247, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0))),
                          padding: EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(
                              "Intermediate",
                              style: TextStyle(
                                  color: Color.fromRGBO(148, 179, 199, 1),
                                  fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 170,
                      margin: const EdgeInsets.only(left: 40),
                      child: const Text(
                        'Today\'s Challenge',
                        style: TextStyle(
                            fontSize: 38,
                            color: Color.fromRGBO(67, 67, 66, 1),
                            fontFamily: 'San Serif'),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 40, top: 30),
                      child: const Text(
                        'German meals',
                        style: TextStyle(
                            fontSize: 22,
                            color: Color.fromRGBO(81, 131, 169, 1),
                            fontFamily: 'San Serif'),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 47, top: 50),
                  child: Row(
                    children: const [
                      Icon(Icons.diamond,
                          color: Color.fromRGBO(228, 135, 136, 1), size: 30.0),
                      Text(
                        'Take this lesson to earn a new milestone',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(187, 187, 188, 1),
                            fontFamily: 'San Serif'),
                      )
                    ],
                  ),
                )
              ]),
        ));
  }
}
