import 'package:flutter/material.dart';

import 'login_page.dart';

class START_3_PAGE extends StatefulWidget {
  const START_3_PAGE({Key? key}) : super(key: key);

  @override
  _START_3_PAGEState createState() => _START_3_PAGEState();
}

class _START_3_PAGEState extends State<START_3_PAGE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff0D638A) ,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(

            margin: EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Image.asset('images/start_3.PNG',height: 250,width: 250,),
                SizedBox(
                  height: 5,
                ),
                Text('24 Hour',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 20,
                    fontFamily: 'sf-pro-display-cufonfonts',
                  ),
                ),
                Text('Support Available',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 20,
                    fontFamily: 'sf-pro-display-cufonfonts',
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 20,top: 10,right: 20),
                  child: Column(
                    children: [
                      Text('aaa bbb ccccc dd eeeeeee fffff',
                        style: TextStyle(
                            fontSize: 15,color: Colors.grey,
                          fontFamily: 'sf-pro-display-cufonfonts',
                        ),
                      ),
                      Text(' ggg hhh iiii jjjj',
                        style: TextStyle(
                            fontSize: 15,color: Colors.grey,
                          fontFamily: 'sf-pro-display-cufonfonts',
                        ),
                      ),
                    ],
                  ),
                ),

                //ElevatedButton for Get Started
                Container(
                  margin: EdgeInsets.only(top: 50,right: 10,left: 10),
                  width: double.infinity,
                  height: 50,

                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<
                          RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              side: BorderSide(color: Color(0xff0D638A)))),
                      backgroundColor:
                      MaterialStateProperty.all(Color(0xff0D638A)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => LogIn_Page()),
                      );
                    },
                    child: Center(
                      child: const Text("Get Started",
                        style: TextStyle(
                          fontFamily: 'sf-pro-display-cufonfonts',
                        ),),
                    ),
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
