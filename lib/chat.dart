import "package:flutter/material.dart";
import './vendor.dart' as vendor;

class Chat extends StatefulWidget {
  @override
  State createState() => new Halo();
}

class Halo extends State<Chat> {
  List<String> vendorName = ["TokoQ","myD","SKuy"
  ];
  List<String> message = ["halo","hai","udah"
  ];
  List<String> unread = ["5","300","0"];

  Widget buildBody(BuildContext ctxt, int index) {

    final unreadCircle = (unread[index]=="0" )? null : new Container(
      width: 30,
      height: 30,
      decoration: new BoxDecoration(
        color: Color(0xFF3385D9),
        shape: BoxShape.circle,
      ),
      child: new Center(
        child: new Text(unread[index],
          style: new TextStyle(
            color: Colors.white,
            fontSize: 10.0,
          ),
        ),

      ),
    );

    final leftSection = new Container(
      padding: new EdgeInsets.only(left: 8.0),
      child: new Row(
        children: <Widget>[
          new Container(
            padding: EdgeInsets.all(8.0),
            child: new CircleAvatar(
              backgroundImage: new NetworkImage(
                  'https://picsum.photos/250?image=9'),
              radius: 40.0,
            ),
          ),
          new Container(
            padding: EdgeInsets.only(left : 12.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: new Text(vendorName[index],
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,

                    ),
                  ),
                ),
                new Text(message[index],
                  style: new TextStyle(
                  fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );



    final rightSection = new Container(
      padding: EdgeInsets.all(15.0),
      child: unreadCircle,
    );

    return new Container(
      child: new GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => vendor.ChatDisplay()),
          );
        },

        child: new Container(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              leftSection,
              rightSection,
            ],
          ),
        ),
      ),

    );
  }


  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
        appBar: AppBar(
          title: Text(
              "Chat"
          ),
          backgroundColor: Color(0xFF3385D9),
        ),
        body: new Column(
          children: <Widget>[
            new Expanded(
                child: new ListView.builder
                  (
                  itemCount: vendorName.length,
                  itemBuilder: (BuildContext ctxt, int index) => buildBody(ctxt, index),
                )
            ),
          ],
        )
    );
  }
}