import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

class Auth {
  static final GoogleSignIn _googleSignIn = GoogleSignIn();
  static final FirebaseAuth _auth = FirebaseAuth.instance; 
  static String status = 'Not login';

  static Future<FirebaseUser> handleSignIn() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;    

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final FirebaseUser user = await _auth.signInWithCredential(credential);
    //print("signed in " + user.displayName);
    status = 'Success';
    return user;
  }

  static Future<FirebaseUser> signInWithFacebook() async {
    final facebookLogin = FacebookLogin();
    final result = await facebookLogin.logInWithReadPermissions(['email','public_profile']);
    
    if (result.status == FacebookLoginStatus.loggedIn) {
      //berhasil login lewat facebook
      final AuthCredential credential =FacebookAuthProvider.getCredential(
        accessToken: result.accessToken.token,
      );
      final FirebaseUser user = await _auth.signInWithCredential(credential);
      status = 'Success';
      return user;
    }
    else
    if (result.status == FacebookLoginStatus.cancelledByUser){
      status = 'Cancelled by user';
      return FirebaseAuth.instance.currentUser();
    }
    else
    if (result.status == FacebookLoginStatus.error) {
      status = result.errorMessage;
      return FirebaseAuth.instance.currentUser();
    }
    return FirebaseAuth.instance.currentUser();
  }

  static Future<FirebaseUser> signIn(String _email, String _password) async {
    try {
      FirebaseUser user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
      status = 'Success';
      return user; 
    }
    catch (e){
      status = e;
      return FirebaseAuth.instance.currentUser();
    }
  }

  static Future<FirebaseUser> signUp(String _email, String _password) async {
    try {
      FirebaseUser user = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password);
      status = 'Success';
      return user; 
    }
    catch (e){
      status = e;
      return FirebaseAuth.instance.currentUser();
    }
  }

  static Future<FirebaseUser> getCurrentUser() async {
    FirebaseUser user = await FirebaseAuth.instance.currentUser();
    return user;
  }
}