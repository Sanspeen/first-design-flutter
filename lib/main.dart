import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                width: double.maxFinite,
                height: 250,
                child: const Image(
                  image: NetworkImage(
                      'https://www.ecoportal.net/wp-content/uploads/2002/12/mountains-rdn-jpg.webp'),
                  fit: BoxFit.cover,
                )),
            SizedBox(height: 35),
            const Row(children: <Widget>[
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Oeschinen Lake Campground"),
                  Text(
                    "Kandersteg, Switzerland",
                    style: TextStyle(color: Color.fromARGB(255, 167, 167, 167)),
                  )
                ],
              ),
              SizedBox(width: 85),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 248, 116, 28),
                  ),
                  Text("41"),
                ],
              )
            ]),
            SizedBox(height: 35),
            const Row(children: <Widget>[
              SizedBox(width: 55),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 28, 167, 248),
                  ),
                  Text("CALL",
                      style:
                          TextStyle(color: Color.fromARGB(255, 28, 167, 248))),
                ],
              ),
              SizedBox(width: 60),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 28, 167, 248),
                  ),
                  Text("ROUTE",
                      style:
                          TextStyle(color: Color.fromARGB(255, 28, 167, 248))),
                ],
              ),
              SizedBox(width: 60),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.share,
                    color: Color.fromARGB(255, 28, 167, 248),
                  ),
                  Text("SHARE",
                      style:
                          TextStyle(color: Color.fromARGB(255, 28, 167, 248))),
                ],
              ),
            ]),
            SizedBox(height: 35),
            Container(
                width: 320,
                height: 250,
                child: const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam aliquet, ante ut fringilla feugiat, tortor lacus blandit libero, at malesuada libero ex vel lacus. Praesent viverra et metus id molestie.")),
          ],
        ),
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
