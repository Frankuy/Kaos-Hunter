import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              padding: EdgeInsets.all(10),
            ),
            Center (
              child: TextField (
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  hintText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
            ),
            Padding (
              padding: EdgeInsets.only(bottom: 10),
            ),
            Center (
              child: TextField (
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
            ),
            Padding (
              padding: EdgeInsets.only(bottom: 10),
            ),
            TextField (
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                hintText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              ),
            ),
            Padding (
              padding: EdgeInsets.only(bottom: 10),
            ),
            Material (
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xFF3385D9),
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                onPressed: () {},
                child: Text("Sign Up",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
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
              child : GoogleSignInButton(onPressed: () {}, darkMode: true, text: "Sign Up with Google",),
            ),
            Center (
              child : FacebookSignInButton(onPressed: () {},),
            ),
            Padding (
              padding: EdgeInsets.only(top: 30),
            ),
            Center (
              child : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Sudah punya akun? ",
                    style: TextStyle(
                      color: Color(0xFF4D97E2),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Sign In", 
                      style:TextStyle(
                        color: Color(0xFF3385D9),
                        decoration: TextDecoration.underline,
                      ),
                    ),
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