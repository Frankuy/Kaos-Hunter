import "package:flutter/material.dart";
import './vendor.dart' as vendor;

class Order extends StatefulWidget {
  @override
  State createState() => new OrderList();
}

class OrderList extends State<Order> {
  List<String> vendorName = ["TokoQ","myD","SKuy"
  ];
  List<int> dp =[100000,200000,300000];
  List<int> totalHarga =[1000000,500000,800000];
  List<int> jumlah = [200,10,50];
  List<int> state = [0,1,2];
  // 0 = menunggu konfirmasi
  // 1 = menunggu pembayaran
  // 2 = sedang dikerjakan


  Widget buildBody(BuildContext ctxt, int index) {

    final statecheckdp = state[index]==0 ? null :
      new Text("DP Min: "+ dp[index].toString());

    final statecheckharga = state[index]==0 ? null :
      new Text("Total: " + totalHarga[index].toString());

    final printstate = state[index]==0 ?
        new Text("Menunggu konfirmasi") :
      (state[index]==1) ?
        new Text("Menunggu pembayaran") :
      new Text("Sedang dikerjakan");

    final leftSection = new Container(

      padding: EdgeInsets.only(left: 16),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(vendorName[index],
            style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),

          new Container(
            child: statecheckdp,
          ),
          new Container(
            child: statecheckharga,
          ),
          new Text(jumlah[index].toString() + " pcs"),
          new Container(
            child: printstate,
          ),
        ],
      ),
    )
    ;

    final rightSection = new Container(
      padding: EdgeInsets.all(12.0),
      child: Image(
          width: 150,
          height: 150,
          image: AssetImage("images/Jacket.png")),
    );

    return new Container(
      padding: EdgeInsets.only(left: 8.0, right :8.0,top: 4, bottom: 4),
      child: new GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => vendor.ChatDisplay()),
          );
        },

        child: new Container(
          decoration: BoxDecoration(
            border: new Border.all(color: Colors.blueAccent),
            borderRadius: new BorderRadius.all(Radius.circular(9.0))
          ),
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
              "Order"
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