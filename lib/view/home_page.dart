import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_design_figma/core/extension/context_size.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mobile design figma')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              isDismissible: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(35.0),
                ),
              ),
              builder: (context) {
                return SizedBox(
                  height: context.height * 0.4,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: context.width * 0.05),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: context.height * 0.04,
                        ),
                        Text(
                          "Thousands of doctors",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Color(0xff027C90),
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: context.height * 0.025,
                        ),
                        Text(
                          "You can easily contact with a thousands of doctors and contact for needs",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: context.height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.power_input_outlined),
                            Icon(Icons.power_input_outlined),
                            Icon(Icons.power_input_outlined),
                          ],
                        ),
                        SizedBox(
                          height: context.height * 0.05,
                        ),
                        Text(
                          "Skip",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Color(0xff027C90),
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: context.height * 0.035,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: context.height * 0.06,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      25.0,
                                    ),
                                  ),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all(
                                const Color(0xff027C90),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Next",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: const Text("showModalBottomSheet"),
        ),
      ),
    );
  }
}
