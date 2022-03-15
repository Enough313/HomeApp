import 'dart:async';

import 'package:flutter/material.dart';

import 'package:homeapp/screen/start_1_page.dart';






class Splash_Screen extends StatefulWidget {
  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}
class _Splash_ScreenState extends State<Splash_Screen> {

   initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>START_1_PAGE()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(backgroundColor: Colors.blue,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(top: 200),
            child: Column(
              children: [
                Icon(Icons.home),
                Text('Homeapp',
                style: TextStyle(fontFamily: 'sf-pro-display-cufonfonts',
                ),),
                Text('abcccccccccccccddddddddddddddd',
                style: TextStyle(fontFamily: 'sf-pro-display-cufonfonts',),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


