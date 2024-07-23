// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                      "LOGIN",
                      style: TextStyle(fontSize: 15, fontFamily: "Courgette"),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    SvgPicture.asset("assets/icons/login.svg", width: 250),
                    SizedBox(
                      height: 35,
                    ),
                    // form
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 70),
                      child: TextField(
                        obscureText:
                            false, //hide text for password, false by default
                        keyboardType:
                            TextInputType.text, //show text type in keyboard
                        textInputAction: TextInputAction
                            .next, //a button in keyboard,done: a check mark, next: ">" mark
                        style:
                            TextStyle(color: Colors.purple[400], fontSize: 12),
                        decoration: InputDecoration(
                          hintText: 'Enter your name', //placeholder
                          hintStyle:
                              TextStyle(color: Colors.black45, fontSize: 12),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(71)),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ), //add full border
                          filled: true,
                          fillColor: Colors.purple[50],
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.purple[400],
                            size: 20,
                          ), //out input
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 70),
                      child: TextField(
                        obscureText:
                            true, //hide text for password, false by default
                        keyboardType: TextInputType
                            .visiblePassword, //show text type in keyboard
                        textInputAction: TextInputAction
                            .done, //a button in keyboard,done: a check mark, next: ">" mark
                        style: TextStyle(
                            color: Colors.purple[400],
                            fontSize: 12), //color of written text
                        decoration: InputDecoration(
                          hintText: 'Enter your password', //placeholder
                          hintStyle:
                              TextStyle(color: Colors.black45, fontSize: 12),
                          //text under input
                          // helperText: 'should be a valid password',
                          // helperStyle: TextStyle(color: Colors.purple[400]),
                          //-->icon
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.purple[400],
                            size: 20,
                          ), //out input
                          suffixIcon: Icon(
                            Icons.visibility,
                            color: Colors.purple[400],
                            size: 18,
                          ), //in & after input
                          //prefixIcon: Icon(Icons.person, color: Colors.purple[200],),//in & before input
                          //to add background color to input
                          filled: true,
                          fillColor: Colors.purple[50],
                          //-->border
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(71)),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // login btn
                    ElevatedButton(
                      onPressed: () {
                        // add to stack
                        Navigator.pushNamed(context, '/login');
                      },
                      style: ButtonStyle(
                        foregroundColor: WidgetStateProperty.all(Colors.white),
                        backgroundColor:
                            WidgetStateProperty.all(Colors.purple[400]),
                        padding: WidgetStateProperty.all(EdgeInsets.symmetric(
                            vertical: 17, horizontal: 155)),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an Account?",
                          style: TextStyle(color: Colors.purple[400]),
                        ),
                        GestureDetector(//for text link
                          onTap: () {
                            Navigator.pushNamed(context, "/signup");
                          },
                          child: Text(" Sign up", style: TextStyle(color: Colors.purple[400], fontWeight: FontWeight.bold),),
                        ),
                      ],
                    )
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
                  right: 0,
                  child: Image.asset(
                    "assets/images/login_bottom.png",
                    width: 111,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
