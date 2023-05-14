import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_design_figma/core/extension/context_size.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
                        "Sign up for free",
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
                  height: context.height * 0.09,
                ),
                // TEXTFORMFIELD 1 //
                SizedBox(
                  height: context.height * 0.06,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Phone number or login",
                      hintStyle: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                        ),
                      ),
                      contentPadding:
                          EdgeInsets.only(left: context.width * 0.05),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff027C90),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: context.height * 0.03,
                ),
                // TEXTFORMFIELD 2 //
                SizedBox(
                  height: context.height * 0.06,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                        ),
                      ),
                      contentPadding: EdgeInsets.only(
                        left: context.width * 0.05,
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff027C90),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                      suffixIconColor: const Color(0xff027C90),
                    ),
                  ),
                ),
                SizedBox(
                  height: context.height * 0.03,
                ),
                Text(
                  "Please enter your phone number or login and password.",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.71),
                      fontWeight: FontWeight.w400,
                      fontSize: 12.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: context.height * 0.03,
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
                    onPressed: () {},
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
                SizedBox(
                  height: context.height * 0.03,
                ),
                Text(
                  "or countinue with",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 12.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: context.height * 0.035,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // CONTAINER FACEBOOK //
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: context.width * 0.06,
                          vertical: context.height * 0.019,
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/facebook1.svg"),
                            SizedBox(
                              width: context.width * 0.05,
                            ),
                            Text(
                              "Facebook",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // CONTAINER GOOGLE //
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: context.width * 0.06,
                          vertical: context.height * 0.016,
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/google.svg"),
                            SizedBox(
                              width: context.width * 0.05,
                            ),
                            Text(
                              "Facebook",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: context.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Alreasy have account?",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Color.fromRGBO(38, 38, 38, 0.5),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    Text(
                      "Sign in",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Color.fromRGBO(25, 118, 210, 1),
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
