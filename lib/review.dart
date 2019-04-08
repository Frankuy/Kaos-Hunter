import 'package:flutter/material.dart';

class ReviewDisplay extends StatefulWidget {
  @override
  State createState() => new ReviewList();
}

class ReviewList extends State<ReviewDisplay> {
  List<String> userName = ["Fikri","Isa","Fajar","Sadikin","Ali","Irfan","Syeikh"];
  List<String> comment = ["Dahsyat","Ashiap","Ada kesalahan dikit sih","Dimurahin ya harganya","Keliatan kualitasnya","Nice","Makasih banyak ya"];
  List<String> userRating = ["3","4.5","2","4","4","3","3.5"];

  Widget buildBody(BuildContext ctxt, int index) {

    return new Container(
      padding: EdgeInsets.only(top: 6.0,bottom: 6.0,left: 12.0,right: 12.0),
      child: new Container(
        decoration: new BoxDecoration(
            border: Border.all(color: Colors.black, width: 1)
        ),
        padding: EdgeInsets.all(12.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(userName[index],
              style: new TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
              ),),
            new Text(comment[index]),
            Align(
              alignment: Alignment.bottomRight,
              child: new Text(userRating[index].toString() + " / 5",
                textAlign: TextAlign.right,
                style: new TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12.0,
              ),),
            ),
          ],
        ),

      ),
    );
  }

  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
        appBar: AppBar(
          title: Text(
              "Review TokoQ"
          ),
          backgroundColor: Color(0xFF3385D9),
        ),
        body: new Column(
          children: <Widget>[
            new Expanded(
                child: new ListView.builder
                  (
                  itemCount: userName.length,
                  itemBuilder: (BuildContext ctxt, int index) => buildBody(ctxt, index),
                )
            ),
          ],
        )
    );
  }
}
