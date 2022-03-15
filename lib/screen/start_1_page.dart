import 'package:flutter/material.dart';
import 'package:homeapp/screen/start_2.dart';

class START_1_PAGE extends StatefulWidget {
  const START_1_PAGE({Key? key}) : super(key: key);

  @override
  _START_1_PAGEState createState() => _START_1_PAGEState();
}

class _START_1_PAGEState extends State<START_1_PAGE> {
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
                Image.asset('images/start_1.PNG',height: 250,width: 250,),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Guaranted Choice',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,
                    fontFamily: 'sf-pro-display-cufonfonts',),
                ),
                Text(
                  'Advanced',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,
                    fontFamily: 'sf-pro-display-cufonfonts',),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 10, right: 20),
                  child: Column(
                    children: [
                      Text(
                        'From book homeapp we graudated about',
                        style: TextStyle(fontSize: 15, color: Colors.grey,
                          fontFamily: 'sf-pro-display-cufonfonts',),
                      ),
                      Text(
                        ' your firt choice become in advance',
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
                        MaterialPageRoute(builder: (context) => START_2_PAGE()),
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
