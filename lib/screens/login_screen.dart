import 'package:flutter/material.dart';
import 'package:flutterappecoact/screens/chose_your_interests.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/backgroundimage.png"), fit: BoxFit.cover)),


            child: Scaffold(
              backgroundColor: Colors.transparent,
            ),
          ),
          Positioned(
            top: 40,
            left: 10,
            right: 10,
            child: Column (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Center(
                  child:
                    Text('Welcome to EcoAct2020',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                ),
                SizedBox(height: 10.0),
                Center(
                  child: Text("Let's fight climate change together!",
                      style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                      ),
                  )
                ),
                SizedBox (height: 380),
                Center(
                  child: Text('Create Account',
                      style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                      ),
                  )
                ),
                SizedBox(height: 5.0),
                Container(
                  height: 130,
                  width: 300,
                  decoration: BoxDecoration (
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius:7,
                        offset: Offset(0,3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child:TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Email',
                          ),
                        )
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                       child: TextField(
                         obscureText: true,
                         decoration: InputDecoration(
                           labelText: 'Password',
                         ),
                       ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ChooseYourInterests()),),
                  child: Text('Next/Skip',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
