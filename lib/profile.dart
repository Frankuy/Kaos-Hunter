import "package:flutter/material.dart";

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Color(0xFF3385D9),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings, color: Colors.white,),
            onPressed: () {

            },
          ),
        ],
      ),
      body: Column (
        children : <Widget> [
          Container(
            height: 270,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xFF3385D9),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage("https://st2.depositphotos.com/9223672/12056/v/950/depositphotos_120568216-stock-illustration-male-face-avatar-logo-template.jpg"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                ),
                Text(
                  "irfan212",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.local_atm, size: 50.0,),
                  Text(
                    "Rp 10.000"
                  ),
                ],
              ),
              Container (
                margin: EdgeInsets.only(right : 10),
                child : FlatButton(
                  child: Text(
                    "Tambah",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                  },
                ),
              ),
            ],
          ),
          Container(
            height: 1.5,
            color: Colors.black,
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.favorite,
                  ),
                  title: Text(
                    "Vendor Favorit"
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.history,
                  ),
                  title: Text(
                    "Riwayat Belanja"
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.person,
                  ),
                  title: Text(
                    "Edit Profil"
                  ),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}