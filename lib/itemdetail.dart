import "package:flutter/material.dart";


class ItemDetail extends StatelessWidget {
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Container(
              padding: EdgeInsets.all(12.0),
                  height: 450,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: NetworkImage('https://picsum.photos/250?image=9'),
                      fit: BoxFit.fill,
                    ),
                  ),
            ),
            new Container(
              padding: EdgeInsets.all(12.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text("Desain terbaik minggu ini, silahkan order!!! Ready stock bahan: cotton combed 30s. Tanpa minimal order harga Rp. 80.0000. Beli banyak diskon makin banyak! silahkan nego...",
                    style: new TextStyle(
                        fontSize: 18
                    ),),
                  new Container(
                    height: 10,
                  ),
                  new Text("Type : Kaos",
                    style: new TextStyle(
                        color: Colors.blueGrey
                    ),),
                  new Text("5 Jam yang lalu",
                    style: new TextStyle(
                        color: Colors.blueGrey
                    ),),
                ],
              ),
            ),
            new Center(
              child: new RaisedButton(
                  color: Colors.lightBlue,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: new Text("Order", style: new TextStyle(color: Colors.white),)
              ),
            ),
          ],
        )
    );
  }
}