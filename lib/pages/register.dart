import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //to avoid phone barre (time, charge)
      child: Scaffold(
        backgroundColor: Color(0xff231f26),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.home,
            color: Colors.white,
          ),
          backgroundColor: Color(0xff2e2d2e),
        ),
        appBar: AppBar(
        backgroundColor: Color(0xff2e2d2e),
        title: Text("Register"),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 27.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.deblur_outlined,size: 82,color: Colors.white),
              Text(
                "Sign up",
                style: TextStyle(color: Colors.white, fontSize: 42),
              ),
              
              SizedBox(height: 50),
              // name
              TextField(
                obscureText: false, //hide text for password, false by default
                keyboardType: TextInputType.text, //show text type in keyboard
                textInputAction: TextInputAction
                    .next, //a button in keyboard,done: a check mark, next: ">" mark
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Enter your name', //placeholder
                  hintStyle: TextStyle(color: Colors.grey[700]),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(71)),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ), //add full border
                  filled: true,
                  fillColor: Colors.white10,
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.grey[400],
                    size: 23,
                  ), //out input
                  // suffixIcon: Icon(
                  //   Icons.sticky_note_2,
                  //   color: Colors.grey[400],
                  //   size: 18,
                  // ), //in & after input
                  // prefixIcon: Icon(Icons.person, color: Colors.grey[200],),//in & before input
                ),
              ),
              SizedBox(height: 20),
              // email
              TextField(
                obscureText: false, //hide text for password, false by default
                keyboardType: TextInputType.text, //show text type in keyboard
                textInputAction: TextInputAction
                    .next, //a button in keyboard,done: a check mark, next: ">" mark
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Enter your email', //placeholder
                  hintStyle: TextStyle(color: Colors.grey[700]),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(71)),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ), //add full border
                  filled: true,
                  fillColor: Colors.white10,
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.grey[400],
                    size: 23,
                  ), //out input
                  // suffixIcon: Icon(
                  //   Icons.sticky_note_2,
                  //   color: Colors.grey[400],
                  //   size: 18,
                  // ), //in & after input
                  // prefixIcon: Icon(Icons.person, color: Colors.grey[200],),//in & before input
                ),
              ),
              SizedBox(height: 20),
              // password
              TextField(
                obscureText: true, //hide text for password, false by default
                keyboardType: TextInputType.text, //show text type in keyboard
                textInputAction: TextInputAction
                    .done, //a button in keyboard,done: a check mark, next: ">" mark
                style: TextStyle(color: Colors.white),//color of written text
                decoration: InputDecoration(
                  hintText: 'Enter your password', //placeholder
                  hintStyle: TextStyle(color: Colors.grey[700]),
                  //text under input
                  helperText: 'should be a valid password',
                  helperStyle: TextStyle(color: Colors.grey[400]),
                  //-->icon
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.grey[400],
                    size: 23,
                  ), //out input
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Colors.grey[400],
                    size: 18,
                  ), //in & after input
                  //prefixIcon: Icon(Icons.person, color: Colors.grey[200],),//in & before input
                  //to add background color to input
                  filled: true,
                  fillColor: Colors.white10,
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
              SizedBox(height: 22,),
              Container(
                width: double.infinity,
                child: Expanded(//to take all space
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Register'),
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(Color(0xff2e2d2e)),
                      padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}