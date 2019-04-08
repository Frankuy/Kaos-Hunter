import 'package:flutter/material.dart';
import './vendor.dart' as vendor;
import './payment.dart' as payment;

class OrderDetail1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Kaos" + "myDenim"),
          backgroundColor: Color(0xFF3385D9),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.chat, color: Colors.white,),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => vendor.ChatDisplay()),
                );
              },
            ),
          ],
        ),
        body: Column (
          children : <Widget> [

           new Container(
             padding: EdgeInsets.all(12.0),
             child: new Center(
               child: new Container(
                 width: 250,
                 height: 250,
                 decoration: new BoxDecoration(
                   image: new DecorationImage(
                     image: NetworkImage('https://picsum.photos/250?image=9'),
                     fit: BoxFit.fill,
                   ),
                 ),
               ),
             ),
           ),
            new Container(
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.all(8.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text("Total pembelian",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          ),),
                        new Text("10 pcs",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),)
                      ],
                    ),
                  ),
                  new Container(
                    height: 1.5,
                    color: Colors.black,
                  ),
                  new Container(
                    padding: EdgeInsets.all(8.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text("DP Min",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),),
                        new Text("Rp 300.000",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),)
                      ],
                    ),
                  ),
                  new Container(
                    height: 1.5,
                    color: Colors.black,
                  ),
                  new Container(
                    padding: EdgeInsets.all(8.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text("Total Harga",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),),
                        new Text("Rp 1.500.000",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),)
                      ],
                    ),
                  ),
                  new Container(
                    height: 1.5,
                    color: Colors.black,
                  ),
                  new Container(
                    padding: EdgeInsets.all(8.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text("Sudah Bayar",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),),
                        new Text("0",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),)
                      ],
                    ),
                  ),
                  new Container(
                    height: 1.5,
                    color: Colors.black,
                  ),
                  new Container(
                    padding: EdgeInsets.all(8.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text("Status",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),),
                        new Text("Menunggu konfirmasi Vendor",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),)
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
          ],
        )
    );
  }
}

class OrderDetail2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Kaos" + "myDenim"),
          backgroundColor: Color(0xFF3385D9),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.chat, color: Colors.white,),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => vendor.ChatDisplay()),
                );
              },
            ),
          ],
        ),
        body: Column (
          children : <Widget> [

            new Container(
              padding: EdgeInsets.all(12.0),
              child: new Center(
                child: new Container(
                  width: 250,
                  height: 250,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: NetworkImage('https://picsum.photos/250?image=9'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            new Container(
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.all(8.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text("Total pembelian",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),),
                        new Text("10 pcs",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),)
                      ],
                    ),
                  ),
                  new Container(
                    height: 1.5,
                    color: Colors.black,
                  ),
                  new Container(
                    padding: EdgeInsets.all(8.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text("DP Min",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),),
                        new Text("Rp 300.000",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),)
                      ],
                    ),
                  ),
                  new Container(
                    height: 1.5,
                    color: Colors.black,
                  ),
                  new Container(
                    padding: EdgeInsets.all(8.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text("Total Harga",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),),
                        new Text("Rp 1.500.000",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),)
                      ],
                    ),
                  ),
                  new Container(
                    height: 1.5,
                    color: Colors.black,
                  ),
                  new Container(
                    padding: EdgeInsets.all(8.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text("Sudah Bayar",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),),
                        new Text("0",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),)
                      ],
                    ),
                  ),
                  new Container(
                    height: 1.5,
                    color: Colors.black,
                  ),
                  new Container(
                    padding: EdgeInsets.all(8.0),
                    child: new Column(
                      children: <Widget>[
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Text("Status",style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),),
                            new Text("Menunggu bayar DP",style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),)
                          ],
                        ),
                        new Text("Pesanan Anda belum dibayar, silahkan lakukan pembayaran",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),),
                      ],
                    ),
                  ),
                  new Container(
                    height: 1.5,
                    color: Colors.black,
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[

                      new RaisedButton(
                        color: Colors.lightBlue,
                        child: new Text("Bayar"),
                        onPressed:() {
                          Navigator.pop(context);
                        } ,
                      ),
                      new RaisedButton(
                        color: Colors.lightBlue,
                        child: new Text("Batalkan"),
                        onPressed:() {
                          Navigator.pop(context);
                        } ,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}

class OrderDetail3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Kaos" + "myDenim"),
          backgroundColor: Color(0xFF3385D9),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.chat, color: Colors.white,),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => vendor.ChatDisplay()),
                );
              },
            ),
          ],
        ),
        body: Column (
          children : <Widget> [

            new Container(
              padding: EdgeInsets.all(12.0),
              child: new Center(
                child: new Container(
                  width: 250,
                  height: 250,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: NetworkImage('https://picsum.photos/250?image=9'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            new Container(
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.all(8.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text("Total pembelian",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),),
                        new Text("10 pcs",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),)
                      ],
                    ),
                  ),
                  new Container(
                    height: 1.5,
                    color: Colors.black,
                  ),
                  new Container(
                    padding: EdgeInsets.all(8.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text("DP Min",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),),
                        new Text("Rp 300.000",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),)
                      ],
                    ),
                  ),
                  new Container(
                    height: 1.5,
                    color: Colors.black,
                  ),
                  new Container(
                    padding: EdgeInsets.all(8.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text("Total Harga",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),),
                        new Text("Rp 1.500.000",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),)
                      ],
                    ),
                  ),
                  new Container(
                    height: 1.5,
                    color: Colors.black,
                  ),
                  new Container(
                    padding: EdgeInsets.all(8.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text("Sudah Bayar",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),),
                        new Text("0",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),)
                      ],
                    ),
                  ),
                  new Container(
                    height: 1.5,
                    color: Colors.black,
                  ),
                  new Container(
                    padding: EdgeInsets.all(8.0),
                    child: new Column(
                      children: <Widget>[
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Text("Status",style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),),
                            new Text("Dalam Pengerjaan",style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),)
                          ],
                        ),
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
          ],
        )
    );
  }
}

class OrderDetail4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Kaos" + "myDenim"),
          backgroundColor: Color(0xFF3385D9),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.chat, color: Colors.white,),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => vendor.ChatDisplay()),
                );
              },
            ),
          ],
        ),
        body: Column (
          children : <Widget> [

            new Container(
              padding: EdgeInsets.all(12.0),
              child: new Center(
                child: new Container(
                  width: 250,
                  height: 250,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: NetworkImage('https://picsum.photos/250?image=9'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            new Container(
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.all(8.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text("Total pembelian",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),),
                        new Text("10 pcs",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),)
                      ],
                    ),
                  ),
                  new Container(
                    height: 1.5,
                    color: Colors.black,
                  ),
                  new Container(
                    padding: EdgeInsets.all(8.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text("DP Min",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),),
                        new Text("Rp 300.000",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),)
                      ],
                    ),
                  ),
                  new Container(
                    height: 1.5,
                    color: Colors.black,
                  ),
                  new Container(
                    padding: EdgeInsets.all(8.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text("Total Harga",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),),
                        new Text("Rp 1.500.000",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),)
                      ],
                    ),
                  ),
                  new Container(
                    height: 1.5,
                    color: Colors.black,
                  ),
                  new Container(
                    padding: EdgeInsets.all(8.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text("Sudah Bayar",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),),
                        new Text("0",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),)
                      ],
                    ),
                  ),
                  new Container(
                    height: 1.5,
                    color: Colors.black,
                  ),
                  new Container(
                    padding: EdgeInsets.all(8.0),
                    child: new Column(
                      children: <Widget>[
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Text("Status",style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),),
                            new Text("Menunggu Pembayaran",style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),)
                          ],
                        ),
                      ],
                    ),
                  ),
                  new Container(
                    height: 1.5,
                    color: Colors.black,
                  ),

                ],
              ),
            ),new RaisedButton(
                color: Colors.lightBlue,
                child: new Text("Bayar"), textColor: Colors.white,

                onPressed:() {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => payment.Payment()));}
              ),
          ],
        )
    );
  }
}