import 'package:animator/Animations/Transition1.dart';
import 'package:animator/animation_names.dart';
import 'package:flutter/material.dart';

import 'Animations/Transition2.dart';
import 'Animations/Transition3.dart';
import 'Animations/Transition4.dart';
import 'Animations/Transition5.dart';
import 'Animations/Transition6.dart';

void main() => runApp(const MaterialApp(
    home: myApp()
));

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animator')),
      backgroundColor: const Color(0xFFdde0e3),
      body: ListView.builder(
          itemCount: animation_list.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                height: 100,
                width: 100,
                child: Card(
                  color: Colors.blue,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  shadowColor: Colors.teal,
                  clipBehavior: Clip.antiAlias,
                  elevation: 8,

                  child: ListTile(
                    onTap: ()
                {
                  // Navigator.push((context), MaterialPageRoute(builder: (context) => transition_1()));
                  if (index == 0){
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (context, animation, anotherAnimation) {
                          return const Transition1();
                          },
                        transitionDuration: const Duration(milliseconds: 1000),
                        transitionsBuilder: (context, animation, anotherAnimation, child) {
                          animation = CurvedAnimation(curve: Curves.easeOut, parent: animation);
                            return ScaleTransition(
                              scale: animation,
                              child: child,
                        );}));
                      }
                  if (index == 1){
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (context, animation, anotherAnimation) {
                          return const Transition2();
                        },
                        transitionDuration: const Duration(milliseconds: 1000),
                        transitionsBuilder: (context, animation, anotherAnimation, child) {
                          animation = CurvedAnimation(curve: Curves.easeOut, parent: animation);
                          return ScaleTransition(
                            scale: animation,
                            child: child,
                          );}));
                  }
                  if (index == 2){
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (context, animation, anotherAnimation) {
                          return const Transition3();
                        },
                        transitionDuration: Duration(milliseconds: 1000),
                        transitionsBuilder: (context, animation, anotherAnimation, child) {
                          animation = CurvedAnimation(curve: Curves.easeOut, parent: animation);
                          return ScaleTransition(
                            scale: animation,
                            child: child,
                          );}));
                  }
                  if (index == 3){
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (context, animation, anotherAnimation) {
                          return const Transition4();
                        },
                        transitionDuration: Duration(milliseconds: 1000),
                        transitionsBuilder: (context, animation, anotherAnimation, child) {
                          animation = CurvedAnimation(curve: Curves.easeOut, parent: animation);
                          return ScaleTransition(
                            scale: animation,
                            child: child,
                          );}));
                  }
                  if (index == 4){
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (context, animation, anotherAnimation) {
                          return const Transition5();
                        },
                        transitionDuration: Duration(milliseconds: 1000),
                        transitionsBuilder: (context, animation, anotherAnimation, child) {
                          animation = CurvedAnimation(curve: Curves.easeOut, parent: animation);
                          return ScaleTransition(
                            scale: animation,
                            child: child,
                          );}));
                  }

                  if (index == 5){
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (context, animation, anotherAnimation) {
                          return const Transition6();
                        },
                        transitionDuration: Duration(milliseconds: 1000),
                        transitionsBuilder: (context, animation, anotherAnimation, child) {
                          animation = CurvedAnimation(curve: Curves.easeOut, parent: animation);
                          return ScaleTransition(
                            scale: animation,
                            child: child,
                          );}));
                  }
                    },
                    title: Text(animation_list[index].animation_names),
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
