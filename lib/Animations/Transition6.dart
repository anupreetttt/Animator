import 'package:flutter/material.dart';

class Transition6 extends StatefulWidget {
  const Transition6({Key? key}) : super(key: key);

  @override
  State<Transition6> createState() => _Transition6State();
}

class _Transition6State extends State<Transition6> {

  double opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Animation Six')),
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
                      Text("Animation six",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(padding: EdgeInsets.all(10.0),
                        child: Text(
                            "Click on the button to see the fading out animation"
                        ),)
                    ],
                  ),
                )
            ),
            Flexible(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      child: const Icon(Icons.change_circle),
                      onPressed: () {
                        setState(
                              () => opacity = opacity == 0 ? 1.0 : 0.0,
                        );
                      },
                    ),

                    AnimatedOpacity(
                      opacity: opacity,
                      duration: const Duration(milliseconds: 2000),
                      child: Image.asset(
                        './images/allchar.jpeg',
                        width: 200,
                      ),
                    ),

                  ],
                ),
            ),
          ],
        )
    );
  }
}
