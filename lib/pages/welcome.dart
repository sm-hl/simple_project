import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff231f26),
      appBar: AppBar(
        backgroundColor: Color(0xff2e2d2e),
        title: Text("Welcome", style: TextStyle(fontFamily: "PlaywriteCU"),),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  // add to stack
                  Navigator.pushNamed(context, '/login');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[300]),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 22)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
                ),
                child: Text("Have an account",style: TextStyle(fontFamily: "PlaywriteCU", color: Color(0xff2e2d2e))),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Text("OR", style: TextStyle(fontFamily: "PlaywriteCU", color: Colors.white),),
            ),
            Container(
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[300]),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 22)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
                ),
                child: Text("Create an account",style: TextStyle(fontFamily: "PlaywriteCU", color: Color(0xff2e2d2e))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
