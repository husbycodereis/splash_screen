import 'dart:async';
import 'package:flutter/material.dart';

import 'package:splash_screen/main.dart';

// class SplashScreen extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     startTimer();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Center(
//           child: Container(
//         width: 200,
//         height: 200,
//         color: Colors.green,
//       )),
//     );
//   }

//   startTimer() {
//     var _duration = Duration(milliseconds: 2000);
//     return Timer(_duration, navigate);
//   }

//   navigate() async {
//     //SharedPreferences preferences = await SharedPreferences.getInstance();

//     Navigator.of(context).push(MaterialPageRoute(
//         builder: (BuildContext context) => MyHomePage(
//               title: 'splash screen test',
//             )));
//   }
// }

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimer() {
    var _duration = Duration(milliseconds: 3000);
    return Timer(_duration, navigate);
  }

  void navigate() {
    Navigator.of(context).push(PageRouteBuilder(
        transitionDuration: Duration(seconds: 2),
        pageBuilder: (_, __, ___) => MyHomePage(
              title: 'Hero animation',
            )));
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: 'cat',
        child: Container(
          child: Image.network(
              'https://static.thenounproject.com/png/1179225-200.png'),
        ),
      ),
    );
  }
}
