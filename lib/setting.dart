import "package:flutter/material.dart";


class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Edit Profil"),
          backgroundColor: Color(0xFF3385D9),
          actions: <Widget>[
          ],
        ),
        body: Column(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.all(12.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.only(left:12.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text("Nama",style: new TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),),
                        TextField(),
                      ],
                    ),
                  ),
                  new Container(
                    height: 1.5,
                    color: Colors.black,
                  ),
                  new Container(
                    padding: EdgeInsets.only(left:12.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text("No. HP",style: new TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),),
                        TextField(),
                      ],
                    ),
                  ),

                  new Container(
                    height: 1.5,
                    color: Colors.black,
                  ),
                  new Container(
                    padding: EdgeInsets.only(left:12.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text("Alamat",style: new TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),),
                        TextField(),
                      ],
                    ),
                  ),

                  new Container(
                    height: 1.5,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            new RaisedButton(
              color: Colors.lightBlue,
              child: new Text("Simpan"), 
              textColor: Colors.white,
              onPressed:() {
                Navigator.pop(context);
              } ,
            ),
          ],
        )
    );
  }
}