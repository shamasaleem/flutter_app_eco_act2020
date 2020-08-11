import 'package:flutter/material.dart';
import 'package:flutterappecoact/models/user.dart';
import 'package:flutterappecoact/services/database_service.dart';
import 'package:flutterappecoact/services/firebase_auth_service.dart';
import 'package:flutterappecoact/utils/styleconstants.dart';
import 'package:provider/provider.dart';

import 'chose_your_interests.dart';

class SignupScreen extends StatefulWidget {

  static final String id = 'signup_screen';

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  FirebaseAuthService authService;
  final _signupFormKey = GlobalKey<FormState>();
  bool loading = false;

  String firstName ='';
  String lastName ='';
  String email = '';
  String phoneNumber = '';
  String password = '';

  _submit(){
    if(_signupFormKey.currentState.validate()){
      _signupFormKey.currentState.save();
      FirebaseAuthService.signUpUser(context, firstName + ' ' + lastName, email, phoneNumber, password);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            child: Form(
              key: _signupFormKey,
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
                          decoration: textInputDecoration.copyWith(hintText: 'First Name'),
                          validator: (val) => val.isEmpty ? 'Enter a first name' : null,
                          onChanged: (val){
                            setState(() => firstName = val);
                          },
                        ),
                        SizedBox(height: 20.0,),
                        TextFormField(
                          decoration: textInputDecoration.copyWith(hintText: 'Last Name'),
                          validator: (val) => val.isEmpty ? 'Enter a last name' : null,
                          onChanged: (val){
                            setState(() => lastName = val);
                          },
                        ),
                        SizedBox(height: 20.0,),
                        TextFormField(
                          decoration: textInputDecoration.copyWith(hintText: 'Phone Number'),
                          validator: (val) => val.isEmpty ? 'Enter a phone number' : null,
                          onChanged: (val){
                            setState(() => phoneNumber = val);
                          },
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
                          obscureText: true,
                          decoration: textInputDecoration.copyWith(hintText: 'Password'),
                          validator: (val) => val.length < 6 ? 'Enter a password 6+ chars long' : null,
                          onChanged: (val){
                            setState(() => password = val);
                          },
                        ),
                        SizedBox(height: 20.0,),

                        RaisedButton(
                          onPressed: () async{
                            _submit();
                            //signUpWithForm();
                          },
                          /*
                          onPressed: () async {
                            if(_signupFormKey.currentState.validate()){
                              setState(() {
                                loading = true;
                              });
                              dynamic result = await authService.registerWithEmailAndPassword(email, password);
                              print(result);
                              if(result == null){
                                setState(() {
                                  print('Please supply a valid email');
                                  setState(() {
                                    loading = false;
                                  });
                                });
                              }
                              else{
                                Navigator.push(context, MaterialPageRoute(builder: (_) => ChooseYourInterests()));
                              }
                            }
                          },
                          */
                          color: Colors.teal[400],
                          child: Text(
                            'Register',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
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

  /*
  void signUpWithForm() async {
    if (_signupFormKey.currentState.validate()) {
      try {
        final databaseService =
        Provider.of<DatabaseService>(context, listen: false);

        bool success = await authService.createUserWithEmailAndPassword(
            email,
            password
        );

        if (success) {
          User createdUser = await databaseService.createUser(
              email,
              firstName,
              lastName,
              phoneNumber,
              authService.user.uid
          );
          print('name: ' + createdUser.firstName);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChooseYourInterests()),
            );
          }
      } catch (e) {
        print(e);
      }
    }
  }
*/
}
