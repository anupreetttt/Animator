
import 'package:flutter/material.dart';

class Transition8 extends StatefulWidget {
  @override
  _Transition8State createState() => _Transition8State();
}

class _Transition8State extends State<Transition8> with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(duration: Duration(seconds: 1), vsync: this);
    animationController.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
        title: const Text('Bouncing ball'),
    toolbarHeight: 80, backgroundColor: const Color(0xff9C254D),
    ),
    body: Column(mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.end, children: [
      Container(
      width: 64,
      height: 64,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xffF06292),
      ),
    ),
      SizeTransition(
        sizeFactor: animationController,
        child: const SizedBox(
          height: 150,
        ),
      ),
      Container(
        color: const Color(0xff9C254D),
        height: 100,
        width: double.infinity,
      ),
      Row(
        children: <Widget> [Padding(
          padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
          child: ElevatedButton(onPressed: (){
            setState(() {
              if(animationController.isAnimating){
                animationController.stop();
              }else{
                animationController.reverse();
                animationController.repeat();
              }
            }
            );
          }, child: const Text("Pause"),),
        ),
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
            child: ElevatedButton(onPressed: () {
              setState(() {
                if(animationController.isAnimating){
                  animationController.stop();
                }else{
                  animationController.reverse();
                }
              });
            }, child: const Text("Reverse"),
            ),
          ),
        ]
      )
    ]
      )
    ,
  );

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}