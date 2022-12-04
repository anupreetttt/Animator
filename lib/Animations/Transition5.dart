import 'package:flutter/material.dart';

class Transition5 extends StatefulWidget {
  const Transition5({Key? key}) : super(key: key);

  @override
  State<Transition5> createState() => _Transition5State();
}

class _Transition5State extends State<Transition5> {


  bool _OnClick = true;
  double _fontSize = 25;
  Color _color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Animation five')),
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
                      Text("Animation five",
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
                            "Click on the floating button to see the fading animation between two images"
                        ),)
                    ],
                  ),
                )
            ),
            Flexible(
                flex: 2,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                  SizedBox(
                      height: 120,
                      child: AnimatedDefaultTextStyle(
                      duration: const Duration(milliseconds: 300),
                      style: TextStyle(
                      fontSize: _fontSize,
                      color: _color,
                         fontWeight: FontWeight.bold,
                  ),
                        child: const Text('Harry Potter'),
                      ),
                    ),
                     ],

                )
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  _fontSize = _OnClick ? 40 : 30;
                  _color = _OnClick ? Colors.blue : Colors.black;
                  _OnClick = !_OnClick;
                });
              },
              child: const Icon(Icons.wifi_protected_setup_outlined),
            ),
          ],
        )
    );
  }
}
