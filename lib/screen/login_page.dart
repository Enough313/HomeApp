import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homeapp/screen/sign_up_.dart';

import 'forgot_password.dart';
import 'login_page.dart';

class LogIn_Page extends StatefulWidget {
  const LogIn_Page({Key? key}) : super(key: key);

  @override
  _LogIn_PageState createState() => _LogIn_PageState();
}

class _LogIn_PageState extends State<LogIn_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff0D638A) ,
        title: Text('Sing in'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //  mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // code for  text
            Container(
              margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
              child: Text(
                'Lets you sign in',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontFamily: 'sf-pro-display-cufonfonts',
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
                    'Welcome back you have been inside',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontFamily: 'sf-pro-display-cufonfonts',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '   Username',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'sf-pro-display-cufonfonts',
                    ),
                  ),
                  //TextField for Email
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      //labelText: 'Username',
                      hintText: '   abc',
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '   Password',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'sf-pro-display-cufonfonts',
                    ),
                  ),
                  //TextField for Password
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      labelText: '  Password',
                      hintText: '   Password',
                    ),
                  ),

                  // code for forgot password

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FORGOT_PASSWORD()),
                      );
                    },
                    child: Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: const Text(
                          '   Forgot Password?',
                          style: TextStyle(
                            color: Color(0xff0D638A),
                            fontFamily: 'sf-pro-display-cufonfonts',
                          ),
                        )),
                  ),

                  //ElevatedButton for Sign UP
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    side:
                                        BorderSide(color: Color(0xff0D638A)))),
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff0D638A)),
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //   context, MaterialPageRoute(builder: (context) => Home_Page()),
                        // );
                      },
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                          fontFamily: 'sf-pro-display-cufonfonts',
                        ),
                      ),
                    ),
                  ),

                  //ElevatedButton for Google Sign UO
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    side:
                                        BorderSide(color: Color(0xff0D638A)))),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.g_mobiledata,
                              color: Colors.black,
                            ),
                            const Text(
                              "Sign in with Google",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'sf-pro-display-cufonfonts',
                              ),
                            ),
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
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'sf-pro-display-cufonfonts',
                          ),
                        ),

                        // GestureDetector for sign up
                        GestureDetector(
                            child: const Text(
                              'Sign In',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff0D638A),
                                fontFamily: 'sf-pro-display-cufonfonts',
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Sign_Up_Page()),
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
