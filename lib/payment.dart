import "package:flutter/material.dart";
import './addreview.dart' as addreview;


class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Pembayaran"),
          backgroundColor: Color(0xFF3385D9),
          actions: <Widget>[
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Container(
                padding: EdgeInsets.all(6.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text("Saldo Awal", style: TextStyle(fontSize: 18),),
                    new Row(
                      children: <Widget>[
                        new Text("Rp. 150.000", style: TextStyle(fontSize: 18),),
                        new Container(
                          padding: EdgeInsets.only(left:6.0),
                          child: new GestureDetector(
                            child: new Container(
                              decoration: new BoxDecoration(
                                borderRadius: BorderRadius.circular(3.0),
                                color: Colors.lightBlue,

                              ),
                              padding: EdgeInsets.all(4.0),
                              child: new Icon(Icons.add),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              new Container(
                color: Colors.black,
                height: 1.5,
              ),
              new Container(
                padding: EdgeInsets.all(6.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text("Saldo Awal", style: TextStyle(fontSize: 18),),
                    new Text("Rp. 300.000", style: TextStyle(fontSize: 18),)
                  ],
                ),
              ),
              new Expanded(child: new Text(""),flex: 15,),
              new Expanded(flex: 2 ,child: new Container(
                padding: EdgeInsets.only(bottom: 10.0),
                child: new RaisedButton(
                  color: Colors.lightBlue,
                  child: new Text("Bayar"),  textColor: Colors.white,
                  onPressed:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => addreview.AddReview()));
                  } ,
                ),
              ))

            ],
          ),
        ),
    );
  }
}