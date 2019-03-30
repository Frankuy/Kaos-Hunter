import "package:flutter/material.dart";
import './chat.dart' as chat;
import './home.dart' as home;
import './order.dart' as order;
import './profile.dart' as profile;
import 'vendor.dart' as vendor;

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new Home(),
    title: "Kaos Hunter",
    routes: <String, WidgetBuilder> {
      '/home' : (BuildContext context) => new Home(), 
    },
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState(); 
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
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
    return new Scaffold(
      appBar : new AppBar(
        backgroundColor: Color(0xFF3385D9),
        title: new Text(
          "KAOS HUNTER", 
					style: new TextStyle(
							fontFamily: 'BlackOpsOne',
							fontSize: 20,
              color: Colors.white,
          ),
        ),
      ),
      body : new TabBarView(
        controller: controller,
        children: <Widget>[
          new home.Home(),
          new vendor.Vendor(),
          new order.Order(),
          new chat.Chat(),
          new profile.Profile()
        ],
      ),

      bottomNavigationBar: new Material(
        color: Color(0xFF3385D9),
        child: new TabBar(
          controller : controller,
          tabs : <Widget> [
            new Tab(icon: new Icon(Icons.home)),
            new Tab(icon: new Icon(Icons.store)),
            new Tab(icon: new Icon(Icons.shopping_cart)),
            new Tab(icon: new Icon(Icons.chat)),
            new Tab(icon: new Icon(Icons.person))
          ],
        ),
      ),
    );
  }
}