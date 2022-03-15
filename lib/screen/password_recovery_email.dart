import 'package:flutter/material.dart';
import 'package:homeapp/screen/phone_otp_verification.dart';

class PASSWORD_RECOVERY_EMAIL extends StatefulWidget {
  const PASSWORD_RECOVERY_EMAIL({Key? key}) : super(key: key);

  @override
  _PASSWORD_RECOVERY_EMAILState createState() => _PASSWORD_RECOVERY_EMAILState();
}

class _PASSWORD_RECOVERY_EMAILState extends State<PASSWORD_RECOVERY_EMAIL> {
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
                'Passwprd Recovery',
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
                    'We will send password recovery code to this email',
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
                    'Email address',
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
                      hintText: '   xyz@gmail.com',
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
                        // Navigator.push(
                        //   context, MaterialPageRoute(builder: (context) => PHON_OTP_VERIFICATION_PAGE()),
                        // );
                      },
                      child: const Text("Yes Agree",
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
