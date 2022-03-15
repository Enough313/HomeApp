import 'package:flutter/material.dart';
import 'package:homeapp/screen/password_recovery_email.dart';
import 'package:homeapp/screen/phone_number_verification.dart';

class FORGOT_PASSWORD extends StatefulWidget {
  const FORGOT_PASSWORD({Key? key}) : super(key: key);

  @override
  _FORGOT_PASSWORDState createState() => _FORGOT_PASSWORDState();
}

class _FORGOT_PASSWORDState extends State<FORGOT_PASSWORD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff0D638A) ,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20,right: 20,top: 20),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25,
                      fontFamily: 'sf-pro-display-cufonfonts',),
                  ),
                  Text(
                    'Plese salect the option to send the link to reset the password',
                    style: TextStyle(
                      fontSize: 15,color: Colors.grey,
                      fontFamily: 'sf-pro-display-cufonfonts',),
                  ),
                ],
              ),
            ),

          // for email
            GestureDetector(

                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>PASSWORD_RECOVERY_EMAIL()),
                  );
                },

              child: Container(
                margin: EdgeInsets.only(left: 20,right: 20,top: 50),
                height: 80,
                width: 310,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Icon(Icons.mail,size: 30,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Reset via Email',
                              style: TextStyle(fontFamily: 'sf-pro-display-cufonfonts',),),
                              SizedBox(height: 3,),
                              Text('If you receive the email accept it',
                              style: TextStyle(color: Colors.grey,fontFamily: 'sf-pro-display-cufonfonts',),),
                            ],





                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // for sms
            GestureDetector(

              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PHON_NUMBER_VERIFICATION_PAGE()),
                );
              },

              child: Container(
                margin: EdgeInsets.only(left: 20,right: 20,top: 10),
                height: 80,
                width: 310,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Icon(Icons.message,size: 30,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Reset via SMS'),
                              SizedBox(height: 3,),
                              Text('If you receive the email accept it',
                                style: TextStyle(color: Colors.grey),),
                            ],





                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
