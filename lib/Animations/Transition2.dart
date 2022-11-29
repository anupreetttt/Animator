import 'package:flutter/material.dart';
import 'dart:math';

class Transition2 extends StatelessWidget {
  const Transition2({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Rotating Earth Animation'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _EarthState createState() => _EarthState();
}

class _EarthState extends State<MyHomePage> {

  int count = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      backgroundColor: Colors.black45,

      body: Center(
        child: TweenAnimationBuilder(
            duration: const Duration(seconds: 10),
            tween: Tween<double>(begin: 0, end: 2.0 * pi),
            builder: (_, double angle, __) {
              // Animation value should be same type as Tween typ
              return Transform.rotate(
                  angle: angle,
                  child:
                  Image.asset("./images/star.jpg", fit: BoxFit.contain));
            }),
      ),

    );
  }
}
