import 'package:flutter/material.dart';
import 'package:flutterappecoact/screens/chose_your_interests.dart';
import 'package:flutterappecoact/screens/signup_screen.dart';
import 'package:flutterappecoact/services/firebase_auth_service.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  final FirebaseAuthService _auth = FirebaseAuthService();
  final _formkey = GlobalKey<FormState>();
  bool loading = false;

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
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
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontFamily: 'DMSerifDisplay',
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
                            fontFamily: 'DMSerifDisplay',
                          ),
                      )
                    ),
                    SizedBox (height: 380),
                    Center(
                      child: GestureDetector(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => SignupScreen())),
                        child: Text('Create Account',
                            style: TextStyle(
                                fontSize: 23.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                            ),
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
                            child: TextFormField(
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Email',
                              ),
                              validator: (val) => val.isEmpty ? 'Enter an Email' : null,
                              onChanged: (val){
                                setState(() => email = val);
                              },
                            )
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                           child: TextFormField(
                             obscureText: true,
                             decoration: InputDecoration(
                               labelText: 'Password',
                             ),
                             validator: (val) => val.length < 6 ? 'Enter a password 6+ chars long' : null,
                             onChanged: (val){
                               setState(() => password = val);
                             },
                           ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    GestureDetector(
                      onTap: () async {
                        if(_formkey.currentState.validate()){
                          setState(() {
                            loading = true;
                          });
                          dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                          if(result == null){
                            setState(() {
                              print('Please supply a valid email');
                              loading = false;
                            });
                          }
                          Navigator.push(context, MaterialPageRoute(builder: (_) => ChooseYourInterests()));
                        }
                      },
                      child: Text('Next/Skip',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'DMSerifDisplay',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
