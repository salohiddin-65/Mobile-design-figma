import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_design_figma/view/screens/Home/home_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      home: AnimatedSplashScreen(
        splash: SvgPicture.asset('assets/first_splash.svg'),
        nextScreen: const HomePage(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: const Color(0xff027C90),
      ),
    );
  }
}
