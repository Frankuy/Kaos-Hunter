import "package:flutter/material.dart";
import 'package:firebase_auth/firebase_auth.dart';
import './chat_update.dart' as chat;
import './home.dart' as home;
import './order.dart' as order;
import './profile.dart' as profile;
import './vendor.dart' as vendor;
import './login.dart' as login;
import './signup.dart' as signup;

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Kaos Hunter",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        fontFamily: "Poppins",
      ),
      routes: <String, WidgetBuilder> {
        '/login' : (BuildContext context) => new login.LoginPage(),
        '/signup' : (BuildContext context) => new signup.SignUp(),
      },
      home: new login.LoginPage(),
    ),
  );
}

class Main extends StatefulWidget {
  const Main({Key key, @required this.user}) : super(key: key);
  final FirebaseUser user;

  @override
  _MainState createState() => new _MainState(); 
}

class _MainState extends State<Main> with SingleTickerProviderStateMixin {
TabController controller;

@override
  void initState() {
    controller = new TabController(vsync: this, length: 5);
    super.initState();
  }

@override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : new TabBarView(
        controller: controller,
        children: <Widget>[
          new home.Home(),
          new vendor.ListDisplay(),
          new order.Order(),
          new chat.Chat(),
          new profile.Profile()
        ],
      ),
      bottomNavigationBar: new Material(
        color: Color(0xFF3385D9),
        child: new TabBar(
          labelColor: Color(0xFFFFD200),
          unselectedLabelColor: Colors.white,
          controller : controller,
          tabs : <Widget> [
            new Tab(icon: new Icon(Icons.home)),
            new Tab(icon: new Icon(Icons.store)),
            new Tab(icon: new Icon(Icons.shopping_cart)),
            new Tab(icon: new Icon(Icons.chat)),
            new Tab(icon: new Icon(Icons.person)),
          ],
        ),
      ),
    );
  }
}