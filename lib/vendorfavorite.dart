import 'package:flutter/material.dart';
import './vendor.dart'  as vendor;

class FavoriteVendorDisplay extends StatefulWidget {
  @override
  State createState() => new FavoriteVendorList();
}

class FavoriteVendorList extends State<FavoriteVendorDisplay> {
  List<String> vendorName = ["TokoQ","New Jersey","Bora bora","Sadikin","myDenim","Jaketku","Seragam Sekolah"];
  List<String> vendorAdress = ["Jalan Cisitu no.7 Bandung","Jalan Setiabudi no.5 Bandung","Jalan Sangkuriang, Bandung","Jalan Ganeca, bandung","Jalan Dayang Sumbi, Bandung","Jalan Braga, Bandung","Jalan Reformasi, Bandung"];
  List<String> vendorRating = ["3","4.5","2","4","4","3","3.5"];

  Widget buildBody(BuildContext ctxt, int index) {
    final leftSection = new Container(
      padding: new EdgeInsets.only(left: 8.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.only(bottom: 60),
            child: new Text(vendorName[index],
              style: new TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
              ),),
          ),
          new Text(vendorAdress[index],
            style: new TextStyle(color: Colors.white),),
        ],
      ),
    );

    final rightSection = new Container(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children :<Widget>[
          new Container(
            padding: new EdgeInsets.all(8.0),
            child: new CircleAvatar(
              backgroundColor: Colors.white,
              radius: 45.0,
            ),
          ),
          new Container(
            padding: new EdgeInsets.all(8.0),
            child: new Text("rating "+ vendorRating[index] +"/5",
              style: new TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
              ),
            ),
          ),

        ],
      ),
    );

    return new Container(
      padding: EdgeInsets.all(12.0),
      child: new GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => vendor.VendorProfile()),
          );
        },
        child: new Container(
          color: Colors.blue,
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
              "Vendor Favorit"
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