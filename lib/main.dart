import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List galery = [
    "assets/images/01.jfif",
    "assets/images/02.png",
    "assets/images/03.jfif",
    "assets/images/04.webp",
    "assets/images/05.jfif",
    "assets/images/06.jpg",
    "assets/images/07.jfif",
    "assets/images/08.jfif",
    "assets/images/09.jpg",
    "assets/images/010.jpeg",
    "assets/images/011.jfif",
    "assets/images/012.jpg",
    "assets/images/013.jfif",
    "assets/images/014.jfif",
    "assets/images/015.jfif",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: 27,
        itemBuilder: (context, index) {
          if (index > 2) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(galery[index % 15]),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(galery[index]),
            );
          }
        },
      ),
    );
  }
}
