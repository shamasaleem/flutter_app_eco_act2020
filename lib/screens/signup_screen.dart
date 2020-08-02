import 'package:flutter/material.dart';
import 'package:flutterappecoact/services/firebase_auth_service.dart';
import 'package:flutterappecoact/utils/styleconstants.dart';

import 'chose_your_interests.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final FirebaseAuthService _auth = FirebaseAuthService();
  final _formkey = GlobalKey<FormState>();
  bool loading = false;

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            child: Form(
              key: _formkey,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/backgroundimage.png"), fit: BoxFit.fill)),
                    child: Scaffold(
                      backgroundColor: Colors.transparent,

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
                    child: Column(
                      children: [
                        Text('Please register for EcoAct2020',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'DMSerifDisplay',
                            ),
                        ),
                        SizedBox(height: 20.0,),
                        TextFormField(
                          decoration: textInputDecoration.copyWith(hintText: 'Email'),
                          validator: (val) => val.isEmpty ? 'Enter an Email' : null,
                          onChanged: (val){
                            setState(() => email = val);
                          },
                        ),
                        SizedBox(height: 20.0,),
                        TextFormField(
                          decoration: textInputDecoration.copyWith(hintText: 'Password'),
                          validator: (val) => val.length < 6 ? 'Enter a password 6+ chars long' : null,
                          obscureText: true,
                          onChanged: (val){
                            setState(() => password = val);
                          },
                        ),
                        SizedBox(height: 20.0,),
                        RaisedButton(
                          onPressed: () async {
                            if(_formkey.currentState.validate()){
                              setState(() {
                                loading = true;
                              });
                              dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                              print(result);
                              if(result == null){
                                setState(() {
                                  print('Please supply a valid email');
                                  setState(() {
                                    loading = false;
                                  });
                                });
                              }
                            }
                          },
                          color: Colors.teal[400],
                          child: GestureDetector(
                            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ChooseYourInterests()),),
                            child: Text(
                              'Register',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              
              ),
            )
        ),
      ),
    );
  }
}
