import 'package:flutter/material.dart';

class Transition2 extends StatefulWidget {
  const Transition2({Key? key}) : super(key: key);

  @override
  State<Transition2> createState() => _Transition2State();
}

class _Transition2State extends State<Transition2> {
  bool onTouch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animation Two'),
          toolbarHeight: 65),
      body: Row(
        children: [
          Flexible(
              flex: 1,
              child: Container(
                color: Colors.lightBlue[900],
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Animation across alignments",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(50, 20, 20, 0),
                        child: Text(
                          "Click on any part of the screen to see the animation",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Flexible(
              flex: 2,
              child: GestureDetector(
                child: Center(
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("./images/voldemort2.jpeg"),
                      fit: BoxFit.cover,
                    )),
                    width: double.infinity,
                    height: double.infinity,
                    child: AnimatedAlign(
                      alignment:
                          onTouch ? Alignment.bottomRight : Alignment.topLeft,
                      duration: const Duration(milliseconds: 2000),
                      curve: Curves.bounceOut,
                      child: Image.asset(
                        "./images/harry.jpeg",
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                    onTouch = !onTouch;
                  });
                },
              )
          ),
        ],
      ),
    );
  }
}
