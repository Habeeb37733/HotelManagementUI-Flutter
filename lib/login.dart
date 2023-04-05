import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mainhomepage.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isTextFieldClicked = true;
  String _passwordHintText = "password";

  @override
  void initState() {
    super.initState();
    // Hide the status bar
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(


      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset : false,

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF4C027A), // start color #4C027A
                    Color(0xFF151415), // end color #151415
                  ],
                  stops: [0.0, 0.96],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    height: 41.15,
                    width: 41.15,
                    image: AssetImage('images/bed1.png'),
                  ),
                  SizedBox(height: 8,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hotel Management",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 21.51,
                              fontWeight: FontWeight.w400,

                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:170),
                            child: Text(
                              "ERP",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "NotoSerifTelugu",
                                fontSize:8.63,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

            ),
            Container(
color:Color(0xff96FFFFFF),
              child: Column(
                children: [



                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "LOGIN",
                                    style: TextStyle(
                                      color: Color(0xFF153052),
                                     // fontFamily: "Poppins",
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          ),
                             SizedBox(
                               height:MediaQuery.of(context).size.height*0.05,
                             ),


// Define a boolean variable to track if the TextField is clicked or not


                    SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextField(
                      controller: _usernameController,
                      onTap: () {
                        // Set the _isTextFieldClicked to true when the user clicks on the TextField
                        setState(() {
                          _isTextFieldClicked = false;
                        });
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        labelText: 'Username',
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        filled: true,
                        fillColor: Color(0xffADF2F2F2),
                        // Use a ternary operator to show or hide the prefix icon based on _isTextFieldClicked
                        prefixIcon: _isTextFieldClicked ?  Icon(Icons.person) :null,

                      ),
                    ),
                  ),






                          SizedBox(height: 31.5),


                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: TextField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: _passwordHintText,
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                ),
                                filled: true,
                                fillColor: Color(0xffADF2F2F2),
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: Icon(Icons.remove_red_eye_rounded),
                              ),
                              obscureText: true,
                              onTap: () {
                                setState(() {
                                  _passwordHintText = "";
                                });
                              },
                            ),
                          ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {

                        },
                      ),
                      Text(
                        'Remember Me',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 31.5),
                          SizedBox(
                            width:  MediaQuery.of(context).size.width * 0.8,
                            height:  40,
                            child: ElevatedButton(
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => MyHomePage()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF4C027A), // Sets the background color to #153052
                                minimumSize: Size(
                                  MediaQuery.of(context).size.width * 0.8, // Sets the width to 80% of the device screen width
                                  0, // Sets the height to the minimum height allowed
                                ),
                              ),
                              child: Text("Login",style: TextStyle(fontSize: 18.49,fontWeight: FontWeight.w600),),
                            ),
                          )





                        ],
                      ),
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

// child: Column(
// children: [
//
//
// ],
// ),
//
// ),