import 'package:flutter/material.dart';
import 'package:homeapp/screen/phone_otp_verification.dart';

class PHON_NUMBER_VERIFICATION_PAGE extends StatefulWidget {
  const PHON_NUMBER_VERIFICATION_PAGE({Key? key}) : super(key: key);

  @override
  _PHON_NUMBER_VERIFICATION_PAGEState createState() => _PHON_NUMBER_VERIFICATION_PAGEState();
}

class _PHON_NUMBER_VERIFICATION_PAGEState extends State<PHON_NUMBER_VERIFICATION_PAGE> {
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
                    'Enter yout phone number to continue',
                    style: TextStyle(
                      color: Colors.grey, fontSize: 15,
                      fontFamily: 'sf-pro-display-cufonfonts',),
                  ),
                  const SizedBox(
                    height: 15,
                  ),


                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Phone Number',
                    style: TextStyle(fontSize: 15,
                      fontFamily: 'sf-pro-display-cufonfonts',),
                  ),
                  //TextField for Email
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      //labelText: 'Username',
                      hintText: '   123456789',
                    ),
                  ),
                  SizedBox(height: 5,),


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
                          context, MaterialPageRoute(builder: (context) => PHON_OTP_VERIFICATION_PAGE()),
                        );
                      },
                      child: const Text("Add Number",
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
