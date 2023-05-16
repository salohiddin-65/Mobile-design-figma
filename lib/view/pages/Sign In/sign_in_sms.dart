import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_design_figma/core/extension/context_size.dart';

class SignInSms extends StatefulWidget {
  const SignInSms({super.key});

  @override
  State<SignInSms> createState() => _SignInSmsState();
}

class _SignInSmsState extends State<SignInSms> {
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: context.width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: context.height * 0.25,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Uzbekistan",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Color(0xff027C90),
                ),
                SizedBox(
                  height: context.height * 0.10,
                ),
                Text(
                  'Enter SMS code',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.71),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  height: context.height * 0.02,
                ),
                SizedBox(
                  width: context.width * 0.6,
                  child: const TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        hintText: '- - - -',
                        hintStyle: TextStyle(
                            color: Color(0xff027C90),
                            fontSize: 50,
                            fontWeight: FontWeight.w200),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff027C90)),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 0)),
                  ),
                ),
                SizedBox(
                  height: context.height * 0.02,
                ),
                Text(
                  'Resend SMS',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Color(0xff3798A7),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  height: context.height * 0.1,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(118, 184, 195, 0.3),
                    borderRadius: BorderRadius.all(
                      Radius.circular(25.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: context.height * 0.015,
                      ),
                      SvgPicture.asset("assets/warning.svg"),
                      SizedBox(
                        height: context.height * 0.015,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: context.width * 0.03),
                        child: Text(
                          'By click the “Next” button, I declare my consent to use  the above phone number as the means of comm... Details',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.71),
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: context.height * 0.015,
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
                              isTrue
                                  ? const Color(0xff027C90)
                                  : const Color.fromRGBO(183, 222, 229, 1),
                            ),
                          ),
                          onPressed: isTrue ? () async {} : null,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
