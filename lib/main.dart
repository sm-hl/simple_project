import 'package:flutter/material.dart';
import 'package:fancy_flutter_dialog/fancy_flutter_dialog.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialogs'),
      ),
      body: Center(
        child: Column(
          children: [
            //alert dialog
            ElevatedButton(
              child: Text('Alert Dialog'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Alert Dialog'),
                        content: Container(
                          height: 120,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.car_crash),
                              Text('This is an alert dialog'),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                            child: Text('Close'),
                            onPressed: () {
                              Navigator.of(context)
                                  .pop(); //close the alert dialog
                            },
                          ),
                          TextButton(
                            child: Text('Accept'),
                            onPressed: () {},
                          ),
                        ],
                      );
                    });
              },
            ),
            SizedBox(
              height: 22,
            ),
            // example 1
            ElevatedButton(
              child: Text('Custom Dialog 1'),
              onPressed: () {
                showDialog(
                    barrierDismissible:
                        false, //true by default, to close dialog when click out
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            height: 180,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  'Custom dialog',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 17),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                      hintText: 'Enter your data'),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                TextButton(
                                  child: Text('Save'),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); //close the alert dialog
                                  },
                                ),
                              ],
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 40, vertical: 20),
                          ));
                    });
              },
            ),
            SizedBox(
              height: 22,
            ),
            // example 2
            ElevatedButton(
              child: Text('Custom Dialog 2'),
              onPressed: () {
                showDialog(
                    barrierDismissible:
                        false, //true by default, to close dialog when click out
                    context: context,
                    builder: (BuildContext context) {
                      return CustomDialog(
                        title: 'To continue',
                        description: 'Please subscribe to our chanel',
                        buttonText: 'ok',
                      );
                    });
              },
            ),
            SizedBox(
              height: 22,
            ),  
            // full screen dialog
            ElevatedButton(
                child: Text('Full Screen Dialog'),
                onPressed: () {
                  showGeneralDialog(
                      context: context,
                      barrierDismissible: true, //click out to close dialog
                      barrierLabel: MaterialLocalizations.of(context)
                          .modalBarrierDismissLabel,
                      barrierColor: Colors.black,
                      transitionDuration: Duration(microseconds: 200),
                      pageBuilder: (BuildContext context, Animation first,
                          Animation second) {
                        return Center(
                            child: Container(
                          width: MediaQuery.of(context).size.width -
                              10, //width of screen - 10
                          height: MediaQuery.of(context).size.height - 80,
                          padding: EdgeInsets.all(20),
                          color: Colors.grey[50],
                          child: Column(
                            children: [
                              Text(
                                'Please share video',
                                style: TextStyle(
                                    color: Colors.black,
                                    decoration: TextDecoration.none),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('exit'))
                            ],
                          ),
                        ));
                      });
                }),
            SizedBox(
              height: 22,
            ),
            // fancy dialog
            ElevatedButton(
                child: Text('Fancy Dialog'),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return FancyAlertDialog(
                          title: "Rate us if you like the app",
                          backgroundColor: Color(0xFF303F9F),
                          message: "Do you really want to Exit ?",
                          negativeBtnText: "Cancel",
                          positiveBtnBackground: Color(0xFFFF4081),
                          positiveBtnText: "Rate",
                          negativeBtnBackground: Color(0xFFA9A7A8),
                          onPositiveClicked: () {
                            // Positive button clicked action
                            print("Rate");
                          },
                          onNegativeClicked: () {
                            // Negative button clicked action
                            print("Cancel");
                          },
                        );
                      });
                }),
          ],
        ),
      ),
    );
  }
}

class Consts {
  static const double padding = 16;
  static const double avatarRadius = 66;
  Consts._(); //private constructor
}

class CustomDialog extends StatelessWidget {
  final String? title, description, buttonText;
  final Image? image;
  const CustomDialog(
      {this.title, this.description, this.buttonText, this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Consts.padding)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: Consts.avatarRadius),
          padding: EdgeInsets.only(
            top: Consts.avatarRadius + Consts.padding,
            left: Consts.padding,
            right: Consts.padding,
            bottom: Consts.padding,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(Consts.padding),
            boxShadow: [
              BoxShadow(
                  color: Colors.black, blurRadius: 10, offset: Offset(0, 10)),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title!,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: Consts.padding,
              ),
              Text(
                description!,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: Consts.padding,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(buttonText!),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          //to centrate circle
          right: Consts.padding,
          left: Consts.padding,
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            radius: Consts.avatarRadius,
          ),
        ),
      ],
    );
  }
}
