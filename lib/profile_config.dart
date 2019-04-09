import "package:flutter/material.dart";

class Profile_config extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Pengaturan Akun"),
          backgroundColor: Color(0xFF3385D9),
          actions: <Widget>[
          ],
        ),
        body: ListView(
          children: <Widget>[
            new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.all(6),
                  color: Color(0xFF3385D9),
                  child: new Text("Verifikasi Email",textAlign: TextAlign.center,style: new TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                  ),
                ),
                ),
                new Container(
                  padding: EdgeInsets.all(6.0),
                  child: new Column(
                    children: <Widget>[
                      new Container(
                        height: 50,
                        padding: EdgeInsets.all(8.0),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Text(
                              "Email",
                              style: new TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                              ),
                            ),
                            //TODO : Ini ntar diisi email login yak
                            new Text("ini@email.com",style: new TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                            ),),
                          ],
                        ),
                      ),
                      new Container(
                        height: 1.5,
                        color: Colors.black,
                      ),
                      new Container(
                        height: 50,
                        padding: EdgeInsets.all(8.0),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Text("Status",style: new TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                            ),),
                            new Text("Belum Verifikasi",style: new TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                            ),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            new Container(
              padding: EdgeInsets.all(3),
              color: Color(0xFF3385D9),
              child: new Text(
                "Ubah Password",
                textAlign: TextAlign.center,
                style: new TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20.0,
                ),
              ),
            ),

            new Container(
              padding: EdgeInsets.only(left: 12.0,right: 12.0),
              child: new Column(
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.only(left: 12.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text("Password Lama",style: new TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),),
                        TextField(
                        ),
                      ],
                    ),
                  ),
                  new Container(
                    padding: EdgeInsets.only(left: 12.0),
                    height: 1.5,
                    color: Colors.black,
                  ),
                  new Container(
                    padding: EdgeInsets.only(left: 12.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text("Password baru",style: new TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),),
                        TextField(),
                      ],
                    ),
                  ),
                  new Container(
                    padding: EdgeInsets.only(left: 12.0),
                    height: 1.5,
                    color: Colors.black,
                  ),
                  new Container(
                    padding: EdgeInsets.only(left: 12.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text("Konfirmasi",style: new TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),),
                        TextField(),
                      ],
                    ),
                  ),
                  new Container(
                    padding: EdgeInsets.only(left: 12.0),
                    height: 1.5,
                    color: Colors.black,
                  ),

                  new RaisedButton(
                    child: Text(
                      "Simpan",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.lightBlue,
                    onPressed: (){
                      
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}