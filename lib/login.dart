import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import './main.dart' as main;
import 'auth.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); 
  final GlobalKey<ScaffoldState> _scaffoldstate = new GlobalKey<ScaffoldState>();

  void _showBar(String s){
    _scaffoldstate.currentState.showSnackBar(new SnackBar(content: new Text(s)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldstate,
        body : Container(
          margin: EdgeInsets.only(right: 20, left: 20),
          child : ListView(
            children: <Widget>[
              Padding (
                padding: EdgeInsets.only(top: 30),
              ),
              Image (
                image: AssetImage('images/logo.png'),
                width: 150,
                height: 150,
              ),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Center (
                child : Text (
                  "KAOS HUNTER",
                  style: TextStyle(
                    fontFamily : 'BlackOpsOne',
                    fontSize : 20.0,
                    color : Color(0xFF3385D9),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField (
                      validator: (input) {
                        if (input.isEmpty) {
                          return "Please input an email!";
                        }
                      },
                      onSaved: (input) => _email = input,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        hintText: "Username/Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                    ),
                    TextFormField (
                      validator: (input) {
                        if (input.length < 8) {
                          return "Password needs to be at least 8 characters";
                        }
                      },
                      onSaved: (input) => _password = input,
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        hintText: "Password",
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    Material (
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xFF3385D9),
                      child: MaterialButton(
                        minWidth: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        onPressed: () {
                          final formState = _formKey.currentState;
                          try {
                            if (formState.validate()) {
                              formState.save();
                              Auth.signIn(_email, _password)
                                .then((FirebaseUser user) => 
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => main.Main(user: user))))
                                .catchError((e) => _showBar("Error: "+e));
                            }
                          }
                          catch(e) {
                            _showBar('Error: $e');
                          }
                        },
                        child: Text("Sign In",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center (
                child: Text(
                  "or", 
                  style: TextStyle(
                    color: Color(0xFF4D97E2),
                  ),
                ),
              ),
              Center (
                child : GoogleSignInButton(
                  onPressed: ()=> Auth.handleSignIn()
                    .then((FirebaseUser user) => 
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => main.Main(user: user))))
                    .catchError((e) => _showBar("Error: "+e)),
                  darkMode: true),
              ),
              Center (
                child : FacebookSignInButton(onPressed: ()=>Auth.signInWithFacebook()
                  .then((FirebaseUser user) {
                      if (Auth.status == 'Success') 
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => main.Main(user: user)));
                      else
                        _showBar("Error: "+Auth.status);
                  })
                  .catchError((e) => _showBar("Error: "+e)),
                ),
              ),
              Padding (
                padding: EdgeInsets.only(top: 20),
              ),
              Center (
                child : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Belum punya akun? ",
                      style: TextStyle(
                      color: Color(0xFF4D97E2),
                      ),
                    ),
                    InkWell(
                      child: Text(
                        "Sign up", 
                        style:TextStyle(
                          color: Color(0xFF3385D9),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed('/signup');
                      },
                    )
                  ],
                ),
              ),
            ],
          )
        )
    );
  }
}