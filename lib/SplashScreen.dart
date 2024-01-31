// import 'package:flutter/material.dart';
// import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'package:page_transition/page_transition.dart';
//
// import 'application.dart';



// class splash1 extends StatelessWidget {
//   const splash1({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedSplashScreen(
//       backgroundColor: Colors.white,
//       splash:"assets/logo.jpeg",
//
//       nextScreen: App(),
//       splashTransition: SplashTransition.rotationTransition,
//       pageTransitionType: PageTransitionType.fade,
//     );
//   }
// }
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:teyrydee/WelcomeScreen.dart';



class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => WelcomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      body: Center(
        child: Image.asset('assets/logo bike.png'),
      ),
    );
  }
}