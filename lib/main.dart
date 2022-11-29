import 'package:animator/Animations/Transition1.dart';
import 'package:animator/animation_names.dart';
import 'package:flutter/material.dart';

import 'Animations/Transition2.dart';

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
    animations(animation_names: 'Animation 1'),
    animations(animation_names: 'Animation 2'),
    animations(animation_names: 'Animation 3'),
    animations(animation_names: 'Animation 4'),
    animations(animation_names: 'Animation 5'),
    animations(animation_names: 'Animation 6'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('In first route')),
      body: ListView.builder(
          itemCount: animation_list.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: ()
            {
              // Navigator.push((context), MaterialPageRoute(builder: (context) => transition_1()));
              if (index == 0){
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation, anotherAnimation) {
                      return const Transition1();
                      },
                    transitionDuration: Duration(milliseconds: 1000),
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
