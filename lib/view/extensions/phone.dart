import 'package:flutter/material.dart';
import 'package:mobile_design_figma/core/extension/context_size.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({super.key});

  @override
  State<MyPhone> createState() => MyPhoneState();
}

class MyPhoneState extends State<MyPhone> {
  TextEditingController countryCode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.width * 0.05),
        child: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 1, color: const Color(0xff027C90)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 40,
                        child: TextField(
                          controller: countryCode,
                          decoration: const InputDecoration(
                            labelText: '+9989',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '|',
                        style: TextStyle(
                          fontSize: 33,
                          color: Color(0xff027C90),
                        ),
                      ),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '- - - - - - - - - -',
                            hintStyle: TextStyle(
                              color: Color(0xff027C90),
                              fontSize: 50,
                              fontWeight: FontWeight.w200,
                            ),
                            contentPadding: EdgeInsets.only(left: 10),
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
