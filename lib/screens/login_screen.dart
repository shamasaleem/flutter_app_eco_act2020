import 'package:flutter/material.dart';
import 'package:flutterappecoact/screens/chose_your_interests.dart';
import 'package:flutterappecoact/screens/homepage.dart';
import 'package:flutterappecoact/screens/signup_screen.dart';
import 'package:flutterappecoact/services/firebase_auth_service.dart';
import 'package:flutterappecoact/utils/styleconstants.dart';

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
                          textAlign: TextAlign.center,
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
                    SizedBox (height: 20),
                    Center(
                      child: GestureDetector(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => SignupScreen())),
                        child: Container(
                          height: 40,
                          width: 250,
                          decoration: BoxDecoration (
                            color: Colors.teal.withOpacity(0.75),
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius:7,
                                offset: Offset(0,3),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text('  Click here to register',
                                style: TextStyle(
                                    fontSize: 23.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  fontFamily: 'DMSerifDisplay',
                                ),
                            ),
                          ),
                        ),
                      )
                    ),
                    SizedBox(height: 330.0),
                    Text('Sign In',
                        style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontFamily: 'DMSerifDisplay',
                        ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            obscureText: false,
                            decoration: textInputDecoration.copyWith(hintText: 'Email'),
                            validator: (val) => val.isEmpty ? 'Enter an Email' : null,
                            onChanged: (val){
                              setState(() => email = val);
                            },
                          )
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                         child: TextFormField(
                           obscureText: true,
                           decoration: textInputDecoration.copyWith(hintText: 'Password'),
                           validator: (val) => val.length < 6 ? 'Enter a password 6+ chars long' : null,
                           onChanged: (val){
                             setState(() => password = val);
                           },
                         ),
                        ),
                      ],
                    ),
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
                          Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
                        }
                      },
                      child: Text('Next',
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
