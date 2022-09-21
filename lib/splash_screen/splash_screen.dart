import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import '../main_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 5000,
      splash: Column(
        children: [
          Image.asset('assets/images/launcher/SMDB.png',),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      nextScreen: MainPage(),
      splashIconSize: 360,

      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
