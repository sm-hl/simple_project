// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "SIGNUP",
                        style: TextStyle(fontSize: 15, fontFamily: "Courgette"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SvgPicture.asset("assets/icons/signup.svg", width: 200),
                      SizedBox(
                        height: 25,
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
                                TextStyle(color: Colors.black38, fontSize: 12),
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
                                TextStyle(color: Colors.black38, fontSize: 12),
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
                              vertical: 17, horizontal: 150)),
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28))),
                        ),
                        child: Text("SIGNUP",
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
                            "Already have an Account?",
                            style: TextStyle(color: Colors.purple[400], fontSize: 12),
                          ),
                          GestureDetector(
                            //for text link
                            onTap: () {
                              Navigator.pushNamed(context, "/login");
                            },
                            child: Text(
                              " Sign in",
                              style: TextStyle(
                                color: Colors.purple[400],
                                fontWeight: FontWeight.bold, 
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // or
                      SizedBox(
                        width: 320,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(child: Divider(thickness: 1, color: Colors.grey[400])),
                            SizedBox(width: 12,),
                            Padding(
                              padding: EdgeInsets.only(bottom: 6.5),
                              child: Text("OR", style: TextStyle(color: Colors.purple[400], fontSize: 12, fontWeight: FontWeight.bold),),
                            ),
                            SizedBox(width: 12,),
                            Expanded(child: Divider(thickness: 1, color: Colors.grey[400])),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // icons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // ignore: deprecated_member_use
                          GestureDetector(
                            onTap: (){
                              
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Color.fromARGB(255, 189, 189, 189), width: 1.0),
                                shape: BoxShape.circle,
                              ),
                              padding: EdgeInsets.all(10),
                              child: SvgPicture.asset("assets/images/facebook.svg", color: Colors.purple[500], width: 20)
                            ),
                          ),
                          SizedBox(width: 20,),
                          GestureDetector(
                            onTap: (){
                              
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Color.fromARGB(255, 189, 189, 189), width: 1.0),
                                shape: BoxShape.circle,
                              ),
                              padding: EdgeInsets.all(10),
                              child: SvgPicture.asset("assets/images/instagram.svg", color: Colors.purple[500], width: 20)
                            ),
                          ),
                          SizedBox(width: 20,),
                          // Container(
                          //   decoration: BoxDecoration(
                          //     border: Border.all(color: Color.fromARGB(255, 189, 189, 189), width: 1.0),
                          //     shape: BoxShape.circle,
                          //   ),
                          //   padding: EdgeInsets.all(10),
                          //   child: SvgPicture.asset("assets/images/mail.svg", color: Colors.purple[500], width: 20)
                          // ),
                          // SizedBox(width: 20,),
                          GestureDetector(
                            onTap: (){
                              
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Color.fromARGB(255, 189, 189, 189), width: 1.0),
                                shape: BoxShape.circle,
                              ),
                              padding: EdgeInsets.all(10),
                              child: SvgPicture.asset("assets/images/twitter.svg", color: Colors.purple[500], width: 20)
                            ),
                          ),
                        ],
                      ),
                    
                    ],
                  ),
                ),
                Positioned(
                    child: Image.asset(
                  "assets/images/signup_top.png",
                  width: 111,
                )),
                Positioned(
                    bottom: 0,
                    child: Image.asset(
                      "assets/images/main_bottom.png",
                      width: 61,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
