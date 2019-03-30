import "package:flutter/material.dart";

class Vendor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child : new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new VendorButton(icon : Icons.access_alarm, teks : "ALARM", warnaIcon : Colors.black, goTo: '/order',),
          new VendorButton(icon : Icons.favorite, teks : "FAVORITE", warnaIcon : Colors.black, goTo: '/order',),
          new VendorButton(icon : Icons.add, teks : "ADD", warnaIcon : Colors.black, goTo: '/order',),
          new VendorButton(icon : Icons.home, teks : "HOME", warnaIcon : Colors.black, goTo: '/order'),
        ],
      ),
    );
  }
}

class VendorButton extends StatelessWidget {
  VendorButton({this.icon, this.teks, this.warnaIcon, this.goTo});

  final IconData icon;
  final String teks;
  final Color warnaIcon;
  final String goTo;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Card(
        child: new Column(
          children: <Widget>[
            new IconButton(
              icon : new Icon(icon, size : 50.0), 
              color: warnaIcon,
              onPressed: (){
                Navigator.pushNamed(context, goTo);
              },
            ),
            new Text(teks, style : new TextStyle(fontSize : 20.0))
          ],
        ),
      ),
    );
  }
}