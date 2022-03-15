import 'package:flutter/material.dart';

import 'login_page.dart';



class Sign_Up_Page extends StatefulWidget {
  const Sign_Up_Page({Key? key}) : super(key: key);

  @override
  _Sign_Up_PageState createState() => _Sign_Up_PageState();
}

class _Sign_Up_PageState extends State<Sign_Up_Page> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor:Color(0xff0D638A) ,
          title: Text('Sing Up'),
        ),
        body: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            //  mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // code for Bolg text
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 40),

                  child: Center(
                    child: Text(
                      'Welcome to Homeapp',
                      style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 32,
                        fontFamily: 'sf-pro-display-cufonfonts',),
                    ),
                  ),
                ),
              ),
              // code for lognin page
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                height: 550,
                //MediaQuery.of(context).size.height*50,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'And enjoy during the time you',
                      style: TextStyle(
                        color: Colors.grey, fontSize: 15,
                        fontFamily: 'sf-pro-display-cufonfonts',),
                    ),
                    const SizedBox(
                      height: 15,
                    ),



                    const Text(
                      '   Full Name',
                      style: TextStyle(fontSize: 15,
                        fontFamily: 'sf-pro-display-cufonfonts',),
                    ),
                    //TextField for Full Name
                     TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
                        border: OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.teal),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                     //   labelText: 'Full Name',
                        hintText: '   Full Name',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '   Email address',
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
                       // labelText: 'Email',
                        hintText: '   XYZ@gmail.com',
                      ),
                    ),
                    SizedBox(height: 10,),
                    const Text(
                      '   Password',
                      style: TextStyle(fontSize: 15,
                        fontFamily: 'sf-pro-display-cufonfonts',),
                    ),
                    //TextField for Password
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      //  labelText: 'Password',
                        hintText: '   Password',
                      ),
                    ),

                    Container(
                        margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                        child: Row(
                          children: const [

                             Text(
                              'I Agree to the  ',
                              style: TextStyle(color: Colors.black,
                                fontFamily: 'sf-pro-display-cufonfonts',),
                            ),
                            Text(
                              'Terms and conditions',
                              style: TextStyle(color: Color(0xff0D638A),
                                fontFamily: 'sf-pro-display-cufonfonts',
                                decoration: TextDecoration.underline,),
                            ),
                          ],
                        )),

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
                          //   context, MaterialPageRoute(builder: (context) => Home_Page()),
                          // );
                        },
                        child: const Text("Sign up",
                          style: TextStyle(
                            fontFamily: 'sf-pro-display-cufonfonts',
                          ),),
                      ),
                    ),


                    //ElevatedButton for Google Sign UO
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
                          MaterialStateProperty.all(Colors.white),
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //   context, MaterialPageRoute(builder: (context) => Home_Page()),
                          // );
                        },
                        child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.g_mobiledata,color: Colors.black,),
                              const Text("Sign up with Google",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'sf-pro-display-cufonfonts',
                                ),),
                            ],
                          ),
                        ),
                      ),
                    ),


                    // Text for  Dont have an account Create account
                    Container(
                      margin: EdgeInsets.fromLTRB(29, 25, 29, 5),
                      child: Row(
                        children: [
                          const Text(
                            'Already have an account?',
                            style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold,
                              fontFamily: 'sf-pro-display-cufonfonts',),
                          ),

                          // GestureDetector for sign up
                          GestureDetector(
                              child: const Text(
                                'Sign In',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff0D638A),
                                  fontFamily: 'sf-pro-display-cufonfonts',),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LogIn_Page()),
                                );
                              })
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),

    );
  }
}
