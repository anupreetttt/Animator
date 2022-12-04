import 'package:animator/Animations/Transition1.dart';
import 'package:animator/animation_names.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'Animations/Transition2.dart';
import 'Animations/Transition3.dart';
import 'Animations/Transition4.dart';
import 'Animations/Transition5.dart';
import 'Animations/Transition6.dart';
import 'Animations/Transition7.dart';
import 'Animations/Transition8.dart';

void main() => runApp(const MaterialApp(
    home: myApp()
));

class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const homeScreen(),
    );
  }
}
class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {

  List<animations> animation_list = [
    animations(animation_names: 'Scaling Animation'),
    animations(animation_names: 'Alignment Animation'),
    animations(animation_names: 'Resizing image with background animation'),
    animations(animation_names: 'Fade in animation'),
    animations(animation_names: 'Change Text/image onclick animation'),
    animations(animation_names: 'Fading image onclick animation'),
    animations(animation_names: 'Rotating bounce out animation'),
    animations(animation_names: 'Planet fitness'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animator')),
      backgroundColor: const Color(0xFFdde0e3),
      body: ListView.builder(
        padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
          itemCount: animation_list.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: 80,
                width: 100,
                child: Card(
                  color: Colors.blue,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  shadowColor: Colors.teal,
                  clipBehavior: Clip.antiAlias,
                  elevation: 8,

                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                      child: ListTile(
                        onTap: ()
                {
                      // Navigator.push((context), MaterialPageRoute(builder: (context) => transition_1()));
                      if (index == 0){
                        Navigator.of(context).push(PageTransition(
                            child: const Transition1(), type: PageTransitionType.rotate,
                            alignment: Alignment.topCenter,
                            duration: Duration(milliseconds: 800))
                        );
                          }
                      if (index == 1){
                        Navigator.of(context).push(PageTransition(
                            child: const Transition2(), type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 800))
                        );
                      }
                      if (index == 2){
                        Navigator.of(context).push(PageTransition(
                            child: const Transition3(), type: PageTransitionType.leftToRight,
                            duration: Duration(milliseconds: 800))

                        );
                      }
                      if (index == 3){
                        Navigator.of(context).push(PageTransition(
                            child: const Transition4(), type: PageTransitionType.topToBottom,
                            duration: Duration(milliseconds: 800))

                        );
                      }
                      if (index == 4){
                        Navigator.of(context).push(PageTransition(
                            child: Transition5(), type: PageTransitionType.bottomToTop,
                            duration: const Duration(milliseconds: 800))

                        );
                      }

                      if (index == 5){
                        Navigator.of(context).push(PageTransition(
                            child: const Transition6(), type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 800))
                        );
                      }
                      if (index == 6){
                        Navigator.of(context).push(PageTransition(
                            child: const Transition7(), type: PageTransitionType.scale,
                            alignment: Alignment.bottomCenter,
                        duration: Duration(milliseconds: 1000))
                        );
                      }
                      if (index == 7){
                        Navigator.of(context).push(PageTransition(
                          child: Transition8(), type: PageTransitionType.size,
                           alignment: Alignment.centerLeft,
                           duration: Duration(milliseconds: 800))

                  );
                      }
                        },
                        title: Text(animation_list[index].animation_names),
                      ),
                    ),
                  ),
                ),
              ),
            );
         }
      ),
    );
  }
}



class RouteThree extends StatelessWidget {
  const RouteThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('In third route')),
      body: Center(
          child: OutlinedButton(
            child: const Text('Go to second route'),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
    );
  }
}
