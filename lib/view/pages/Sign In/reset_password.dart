import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_design_figma/core/extension/context_size.dart';
import 'package:mobile_design_figma/view/pages/Sign%20In/sign_in_sms.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignInSms())),
            child: const Icon(Icons.arrow_back, color: Colors.black)),
        title: Text(
          'Forgot password',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.width * 0.05),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: context.height * 0.03,
              ),
              Text(
                'Creat a new password',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: context.height * 0.04,
              ),
              Text(
                'New password',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(
                height: context.height * 0.01,
              ),
              // First TextField //
              TextField(
                decoration: InputDecoration(
                  suffix: SvgPicture.asset("assets/hide_eye.svg"),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff027C90)),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: context.height * 0.01,
                    horizontal: context.width * 0.04,
                  ),
                ),
              ),
              SizedBox(
                height: context.height * 0.03,
              ),
              Text(
                'Confirm New password',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(
                height: context.height * 0.01,
              ),
              // Second TextField //
              TextField(
                decoration: InputDecoration(
                  suffix: SvgPicture.asset("assets/hide_eye.svg"),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff027C90)),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: context.height * 0.01,
                    horizontal: context.width * 0.04,
                  ),
                ),
              ),
              SizedBox(
                height: context.height * 0.46,
              ),
              Column(
                children: [
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
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xff027C90)),
                      ),
                      onPressed: isTrue ? () async {} : null,
                      child: Text(
                        "Verfy",
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
            ],
          ),
        ),
      ),
    );
  }
}
