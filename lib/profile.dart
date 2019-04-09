import "package:flutter/material.dart";
import './profile_config.dart' as profileconfig;
import './setting.dart' as setting;
import './vendorfavorite.dart' as fvendor;

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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profileconfig.Profile_config()),
              );
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
                //TODO: Nanti diisi username user yang login, kalau dia login pake email isi aja username nya pake email dia
                Text(
                  "Username",
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
                    "Rp 50.000"
                  ),
                ],
              ),
              Container (
                margin: EdgeInsets.only(right : 10),
                child : RaisedButton(
                  child: Text(
                    "Tambah",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.lightBlue,
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
                Card (
                  elevation: 2,
                  child: ListTile(
                    leading: Icon(
                      Icons.favorite,
                    ),
                    title: Text(
                      "Vendor Favorit"
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => fvendor.FavoriteVendorDisplay()),
                      );
                    },
                  ),
                ),

                Card (
                  elevation: 2,
                  child: ListTile(
                    leading: Icon(
                      Icons.person,
                    ),
                    title: Text(
                      "Edit Profil"
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => setting.Setting()),
                      );
                    },
                  ),
                ),
                
                // ListTile(
                //   leading: Icon(
                //     Icons.history,
                //   ),
                //   title: Text(
                //     "Riwayat Belanja"
                //   ),
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (context) => upload.Upload()),
                //     );
                //   },
                // ),
              ],
            ),
          )
        ],
      )
    );
  }
}