import "package:flutter/material.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          "KAOS HUNTER", 
          style: TextStyle(
            fontFamily: 'BlackOpsOne', 
            fontSize: 20, 
            color: Colors.white
          ),
        ),
        backgroundColor: Color(0xFF3385D9),
      ),
      body: Container(
        color: Colors.grey[100],
          child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    "Hai Irfan,", 
                    style : new TextStyle(fontSize:20.0,),
                  ),
                  new Text(
                    "Mau pesan apa?",
                    style : new TextStyle(fontSize:20.0,),
                  ),
                ],
              ),
            ),
            new Expanded(
              child : new Container(
                margin: EdgeInsets.all(10),
                child : GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    ButtonChoice(label:"Jaket", image: "images/Jacket.png"),
                    ButtonChoice(label:"Kaos", image: "images/Kaos.png"),
                    ButtonChoice(label: "Jersey", image:"images/Jersey.png"),
                    ButtonChoice(label: "Kemeja", image: "images/Kemeja.png"),
                  ],
                ),
              ),
            ), 
          ],
        ),
      ), 
    );
  } 
}

class ButtonChoice extends StatelessWidget {
  final String label;
  final String image;

  ButtonChoice({this.label, this.image});

  @override
  Widget build(BuildContext context) {
    return new Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: new InkWell(
        borderRadius: BorderRadius.circular(20),
        child : new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset(
                this.image,
              )
            ),
            new Text(
              this.label, 
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        splashColor: Color(0xFFFFD200),
        highlightColor: Colors.transparent,
        onTap: () {

        },
      ),
    );
  }
}