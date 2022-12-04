import 'package:flutter/material.dart';

class Transition3 extends StatefulWidget {
  const Transition3({Key? key}) : super(key: key);

  @override
  State<Transition3> createState() => _Transition3State();
}

class _Transition3State extends State<Transition3> {
  bool onTouch = false;

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
                            "Scaling Harry Potter logo animation"
                        ),)
                    ],
                  ),
                )
            ),
            Flexible(
              flex: 2,
              child: GestureDetector(
                child: Center(
                child: AnimatedContainer(
                      width: onTouch ? 200.0 : 100.0,
                      height: onTouch ? 100.0 : 200.0,
                      color: onTouch ? Colors.black : Colors.grey,
                      alignment:
                      onTouch ? Alignment.topCenter : AlignmentDirectional.center,
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.decelerate,
                  child: Image.asset("./images/harry.jpeg", height: 50, width: 50,),
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
        )
    );
  }
}
