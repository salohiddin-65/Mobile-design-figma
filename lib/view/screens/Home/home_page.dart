import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_design_figma/core/extension/context_size.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.width * 0.05),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Home',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Color(0xff027C90),
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/bell.svg"),
                        SvgPicture.asset("assets/like.svg"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: const Color(0xff027C90),
        selectedLabelStyle: const TextStyle(
          fontSize: 15,
          backgroundColor: Color.fromRGBO(118, 184, 195, 0.3),
        ),
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/menu.svg"),
            label: 'Menu',
            backgroundColor: const Color(0xff027C90),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/message.svg"),
            label: 'Notification',
            backgroundColor: const Color(0xff027C90),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/home.svg"),
            label: 'Home',
            backgroundColor: const Color(0xff027C90),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/hospital.svg"),
            label: 'Hospital',
            backgroundColor: const Color(0xff027C90),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/settings.svg"),
            label: 'Settings',
            backgroundColor: const Color(0xff027C90),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
