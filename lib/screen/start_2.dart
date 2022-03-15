import 'package:flutter/material.dart';
import 'package:homeapp/screen/start_3.dart';

class START_2_PAGE extends StatefulWidget {
  const START_2_PAGE({Key? key}) : super(key: key);

  @override
  _START_2_PAGEState createState() => _START_2_PAGEState();
}

class _START_2_PAGEState extends State<START_2_PAGE> {
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
                Image.asset('images/start_2.PNG',height: 250,width: 250,),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Find Post',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,
                    fontFamily: 'sf-pro-display-cufonfonts',),
                ),
                Text(
                  'Without Broker',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,
                    fontFamily: 'sf-pro-display-cufonfonts',),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 10, right: 20),
                  child: Column(
                    children: [
                      Text(
                        'aaa bbb ccccc dd eeeeeee fffff',
                        style: TextStyle(fontSize: 15, color: Colors.grey,
                          fontFamily: 'sf-pro-display-cufonfonts',),
                      ),
                      Text(
                        ' ggg hhh iiii jjjj',
                        style: TextStyle(fontSize: 15, color: Colors.grey,
                          fontFamily: 'sf-pro-display-cufonfonts',),
                      ),
                    ],
                  ),
                ),

                //ElevatedButton for next
                Container(
                  margin: EdgeInsets.only(top: 50, right: 10, left: 10),
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              side: BorderSide(color: Color(0xff0D638A)))),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xff0D638A)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => START_3_PAGE()),
                      );
                    },
                    child: Center(
                      child: const Text(
                        "Next",
                        style: TextStyle(
                          fontFamily: 'sf-pro-display-cufonfonts',
                        ),
                      ),
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
