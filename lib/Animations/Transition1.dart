import 'package:flutter/material.dart';

class Transition1 extends StatefulWidget {
  const Transition1({Key? key}) : super(key: key);

  @override
  State<Transition1> createState() => _Transition1State();
}

class _Transition1State extends State<Transition1> {
  bool isSmall = true ;

  double opacity = 1;
  double _margin = 20;
  double _width = 50;
  double _height = 50;
  Color _color = Colors.blue;
  Curve _curve = Curves.bounceIn;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transition One')),
      body: Row(
        children:  [
          const Flexible(
            flex: 1,
            child: Text("Animation 1"),
          ),
          Flexible(

            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // const Text(
                //   'Hello there',
                //   style: TextStyle(fontSize: 20.0),
                // ),
                AnimatedContainer(
                  child: Image.asset("./images/gryffindor.jpeg"),
                  // Changing just the star's size
                  width: isSmall ? 120 : 300,
                  height: isSmall ? 120 : 300,
                  duration: const Duration(seconds: 04),
                  curve: Curves.bounceOut,
                ),
              ],
            ),
          )
        ],
      ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () => setState(() {isSmall = !isSmall ;} ),
        //   tooltip: 'Switch star size',
        //   child: const Icon(Icons.wifi_protected_setup_outlined),
        // ),
    );
  }
}
