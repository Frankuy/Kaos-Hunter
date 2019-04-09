import "package:flutter/material.dart";

class AddReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Review TokoQ"),
          backgroundColor: Color(0xFF3385D9),
          actions: <Widget>[
          ],
        ),
        body: Column(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.all(12.0),
              child: new TextField (
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  hintText: "Comment",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
            ),
            new Container(
              padding: EdgeInsets.all(12.0),
              child: new TextField (
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  hintText: "Rating 1 - 5",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
            ),

            

            new Expanded(child: new Text(""),flex: 15,),
            new Expanded(flex: 2 ,child: new Container(
              padding: EdgeInsets.only(bottom: 10.0),
              child: new RaisedButton(
                color: Colors.lightBlue,
                child: new Text("Kirim"),  textColor: Colors.white,
                onPressed:() {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  Navigator.pop(context);
                } ,
              ),
            ))
          ],
        )
    );
  }
}