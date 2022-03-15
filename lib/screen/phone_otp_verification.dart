import 'package:flutter/material.dart';

import 'change_new_password.dart';

class PHON_OTP_VERIFICATION_PAGE extends StatefulWidget {
  const PHON_OTP_VERIFICATION_PAGE({Key? key}) : super(key: key);

  @override
  _PHON_OTP_VERIFICATION_PAGEState createState() => _PHON_OTP_VERIFICATION_PAGEState();
}

class _PHON_OTP_VERIFICATION_PAGEState extends State<PHON_OTP_VERIFICATION_PAGE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff0D638A) ,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(

              margin: EdgeInsets.fromLTRB(20,40, 20, 0),

              child: Text(
                'Phone Verification',
                style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 30,
                  fontFamily: 'sf-pro-display-cufonfonts',),
              ),
            ),

            // code for phone  page
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              height: 550,
              //MediaQuery.of(context).size.height*50,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Please enter code send to your number or email',
                    style: TextStyle(
                      color: Colors.grey, fontSize: 15,
                      fontFamily: 'sf-pro-display-cufonfonts',),
                  ),

                  Text(
                    '+1234-567-891-123',
                    style: TextStyle(
                       fontSize: 15,
                      fontFamily: 'sf-pro-display-cufonfonts',),
                  ),


                    // code for otp
                  Padding(
                    padding: const EdgeInsets.only(top: 35.0),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: const TextField(

                              textAlignVertical: TextAlignVertical.center,
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
                                focusedBorder:  UnderlineInputBorder(borderSide: BorderSide(color:
                                Colors.white,width: 1)),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: TextField(
                              textAlignVertical: TextAlignVertical.center,
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
                                focusedBorder:  UnderlineInputBorder(borderSide: BorderSide(color:
                                Colors.white,width: 1)),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: TextField(
                              obscureText: true,
                              textAlignVertical: TextAlignVertical.center,
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
                                focusedBorder:  UnderlineInputBorder(borderSide: BorderSide(color:
                                Colors.white,width: 1)),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: TextField(
                              obscureText: true,
                              textAlignVertical: TextAlignVertical.center,
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
                                focusedBorder:  UnderlineInputBorder(borderSide: BorderSide(color:
                                Colors.white,width: 1)),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                SizedBox(height: 10 ,),

                 //code for belove code
                  Container(
                    margin: EdgeInsets.only(left: 60,right: 60),
                    child: Row(
                      children: [
                        Text(
                          'Having problem?',
                          style: TextStyle(
                            fontSize: 15,color: Colors.grey,
                            fontFamily: 'sf-pro-display-cufonfonts',),
                        ),

                        Text(
                          ' Resend OTP',
                          style: TextStyle(
                            fontSize: 15,color: Colors.blue,
                            fontFamily: 'sf-pro-display-cufonfonts',),
                        ),
                      ],
                    ),
                  ),


                  //ElevatedButton for Sign UP
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: BorderSide(color: Color(0xff0D638A)))),
                        backgroundColor:
                        MaterialStateProperty.all(Color(0xff0D638A)),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context, MaterialPageRoute(builder: (context) => CHANGE_NEW_PASSWORD_PAGE ()),
                        );
                      },
                      child: const Text("Verify code",
                        style: TextStyle(
                          fontFamily: 'sf-pro-display-cufonfonts',
                        ),),
                    ),
                  ),



                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
