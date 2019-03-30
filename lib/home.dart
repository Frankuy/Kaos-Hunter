import "package:flutter/material.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child:  new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Text(
            "Hai Irfan,\nMau pesan apa?", 
            style : new TextStyle(fontSize:20.0,),
          ),
          new Row(
            children: <Widget>[
              
            ],
          ) 
        ],
      ),
    );
  }
}

class ButtonOrder extends StatelessWidget {
  ButtonOrder({this.icon, this.teks, this.warnaIcon, this.goTo});

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