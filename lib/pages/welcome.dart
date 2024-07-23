// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 35,
                    ),
                    Text(
                      "WELCOME TO EDU",
                      style: TextStyle(fontSize: 15, fontFamily: "Courgette"),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    SvgPicture.asset("assets/icons/chat.svg", width: 300),
                    SizedBox(height: 35,),
                    ElevatedButton(
                      onPressed: () {
                        // add to stack
                        Navigator.pushNamed(context, '/login');
                      },
                      style: ButtonStyle(
                        foregroundColor: WidgetStateProperty.all(Colors.white),
                        backgroundColor:
                            WidgetStateProperty.all(Colors.purple[400]),
                        padding: WidgetStateProperty.all(
                            EdgeInsets.symmetric(vertical: 22, horizontal: 58)),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28))),
                      ),
                      child: Text("LOGIN",
                          style: TextStyle(
                            fontSize: 15,
                              fontFamily: "Courgette",
                            )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(Colors.purple[100]),
                        padding: WidgetStateProperty.all(
                            EdgeInsets.symmetric(vertical: 22, horizontal: 52)),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28))),
                      ),
                      child: Text("SIGNUP",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "Courgette",
                              color: Color(0xff2e2d2e))),
                    ),
                  ],
                ),
              ),
              Positioned(
                  child: Image.asset(
                "assets/images/main_top.png",
                width: 111,
              )),
              Positioned(
                  bottom: 0,
                  child: Image.asset(
                    "assets/images/main_bottom.png",
                    width: 111,
                  )),
            ],
          ),
        ),
      
      ),
    );
  }
}
