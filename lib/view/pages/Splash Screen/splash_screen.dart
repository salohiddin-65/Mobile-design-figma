// import 'package:flutter/material.dart';
// import 'package:mobile_design_figma/view/screens/Home/home_page.dart';

// class Splash extends StatefulWidget {
//   const Splash({super.key});

//   @override
//   State<Splash> createState() => _SplashState();
// }

// class _SplashState extends State<Splash> {
//   @override
//   void initState() {
//     super.initState();
//     _navigationToHome();
//   }

//   _navigationToHome() async {
//     await Future.delayed(const Duration(milliseconds: 3000), () {
//       Navigator.pushReplacement(
//           context, MaterialPageRoute(builder: (context) => const HomePage()));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//         child: SizedBox(
//           child: Text(
//             'Splash Screen',
//             style: TextStyle(fontSize: 35),
//           ),
//         ),
//       ),
//     );
//   }
// }
