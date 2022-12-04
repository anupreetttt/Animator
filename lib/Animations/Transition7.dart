import 'package:flutter/material.dart';

class Transition7 extends StatefulWidget {
  const Transition7({Key? key}) : super(key: key);

  @override
  State<Transition7> createState() => _Transition7State();
}

class _Transition7State extends State<Transition7> with TickerProviderStateMixin {

  late AnimationController animationController;
  late CurvedAnimation curveAnimation;

  @override
  void initState() {
    animationController=AnimationController(vsync: this,duration: const Duration(seconds: 4));
    curveAnimation=CurvedAnimation(parent: animationController, curve: Curves.bounceOut);
    animationController.repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rotating bounce out animation'),
      toolbarHeight: 65),
      body: Row(
        children: [
          Flexible(
              flex: 1,
              child: Container(
                color: const Color(0xff0D4C92),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Rotating bounce out animation",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 20, 20, 0),
                        child: Text(
                          "This animation will rotate and then will bounce out. You can control the animation with pause button and resume it back. You can also reverse the animation by pressing the reverse button. It will pause the animation first then when you click again then it will reverse.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Flexible(
              flex: 2,
              child:  Container(
                color: const Color(0xffCFF5E7),
                child: Row(
                    children: [
                  RotationTransition(
                    turns: Tween<double>(begin: 1,end: 0).animate(curveAnimation),
                    alignment: Alignment.center,
                    child: Image.asset("./images/logo.png", height: 150, width: 150,),
                  ),
                  Column(
                    children: <Widget> [ElevatedButton(onPressed: (){
                      setState(() {
                        if(animationController.isAnimating){
                          animationController.stop();
                        }else{
                          animationController.reverse();
                          animationController.repeat();
                        }
                      });
                    }, child: const Text("Pause")),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
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
                ],
                  )]
                ),
              ),
          ),
        ],
      ),
    );
  }
}
