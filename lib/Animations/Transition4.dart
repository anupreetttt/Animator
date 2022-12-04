import 'package:flutter/material.dart';

class Transition4 extends StatefulWidget {
  const Transition4({Key? key}) : super(key: key);

  @override
  State<Transition4> createState() => _Transition4State();
}

class _Transition4State extends State<Transition4> {
  bool _onClick = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Animation Three')),
        body: Row(
          children:  [
            Flexible(
                flex: 1,
                child: Container(
                  color: Colors.lightBlue[900],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      SizedBox(
                        height: 5,
                      ),
                      Text("Animation three",
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
                            "Click on the floating button to see the fading animation between two images"
                        ),)
                    ],
                  ),
                )
            ),
            Flexible(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: double.infinity,
                      height: 100,
                    ),
                    AnimatedCrossFade(
                      firstChild: Image.asset(
                        './images/allchar.jpeg',
                        width: 200,
                      ),
                      secondChild: Image.asset("./images/villians.jpg", height: 200, width: 200,),
                      crossFadeState:
                      _onClick ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                      duration: const Duration(milliseconds: 1000),
                    ),
                  ],
                )
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  _onClick = !_onClick;
                });
              },
              child: const Icon(Icons.wifi_protected_setup_outlined),
            ),
          ],
        )
    );
  }
}
