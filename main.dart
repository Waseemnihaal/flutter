import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(255, 61, 116, 243),
              Color.fromARGB(255, 59, 7, 233),
              Color.fromARGB(255, 50, 14, 211),
              Color.fromARGB(255, 86, 2, 225),
              Color.fromARGB(255, 86, 2, 255)
            ])),
        child: Align(
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                  child: Align(
                alignment: Alignment.centerLeft,
                child: Image(
                  image: AssetImage('lib/assets/menu.webp'),
                  height: 50,
                  width: 50,
                ),
              )),
              Expanded(
                  child: Align(
                alignment: Alignment.centerRight,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image(
                    height: 50,
                    width: 50,
                    image: AssetImage('lib/assets/img.jpg'),
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    ));
  }
}
