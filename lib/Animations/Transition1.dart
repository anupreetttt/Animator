import 'package:flutter/material.dart';
import 'dart:math' as math;

class Transition1 extends StatefulWidget {
  const Transition1({Key? key}) : super(key: key);

  @override
  State<Transition1> createState() => _Transition1State();
}

class _Transition1State extends State<Transition1> with TickerProviderStateMixin{
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transition One')),
      body: Row(
        children:  [
           Flexible(
            flex: 1,
            child: Container(
              color: Colors.indigo,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(
                    height: 5,
                  ),
                  Text("Transition 1",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                   ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Hello click here to see the animation"
                  ),)
                ],
              ),
            )
          ),
          Flexible(
            flex: 2,
            child: Center(
              child: AnimatedBuilder(
                animation: _controller,
                child: Image.asset("./images/harrypotter.jpeg", height: 50, width: 50,),

                builder: (BuildContext context, Widget? child) {
                  return Transform.scale(
                    scale: _controller.value * 2.0 * math.pi,
                    child: child,
                  );
                },
              ),
            ),
          ),
        ],
      )
    );
  }
}
