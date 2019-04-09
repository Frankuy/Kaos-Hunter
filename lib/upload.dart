import "package:flutter/material.dart";

class Upload extends StatefulWidget {
  @override
  State createState() => new UploadDisplay();
}

class UploadDisplay extends State<Upload> {
  String values;
  String values2;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Upload Desain"),
        backgroundColor: Color(0xFF3385D9),
        actions: <Widget>[
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new DropdownButton<String>(
              value: values ,
              hint: new Text("Pilih Tipe"),
              items: <String>['Kemeja', 'Kaos', 'Jaket', 'Jersey'].map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(value),
                );
              }).toList(),
              onChanged: (s) {
                setState(() {
                    values = s;
                });
              },
            ),
            new Container(
              color: Colors.black,
              height: 1.5,
            ),
            new Container(
              padding: EdgeInsets.all(6.0),
              child: new Row(
                children: <Widget>[
                  new Text("Upload Desain",style: TextStyle(fontSize: 16.0),),
                  new Container(
                    padding: EdgeInsets.only(left: 8.0),
                    child: new Container(
                      padding: EdgeInsets.only(right: 10.0),
                      child: new GestureDetector(
                        child: new Container(
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(3.0),
                            color: Colors.lightBlue,

                          ),
                          padding: EdgeInsets.all(4.0),
                          child: new Icon(Icons.cloud_upload,color: Colors.white,),
                        ) ,
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),),
                  ),
                ],
              ),
            ),
            new Container(
              color: Colors.black,
              height: 1.5,
            ),
            new Container(
              width: 100,
              child: new DropdownButton<String>(
                value: values2 ,
                hint: new Text("Pilih Bahan"),
                items: <String>['100% Katun','wol','Cotton combed'].map((String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
                onChanged: (s) {
                  setState(() {
                    values2 = s;
                  });
                },
              ),
            ),
            new Container(
              color: Colors.black,
              height: 1.5,
            ),
            new Expanded(child: new Text(""),flex: 15,),
            new Expanded(flex: 2 ,child: new Container(
              padding: EdgeInsets.only(bottom: 10.0),
              child: new RaisedButton(
                color: Colors.lightBlue,
                child: new Text("Submit"),  textColor: Colors.white,
                onPressed:() {
                  Navigator.pop(context);
                  Navigator.pop(context);
                } ,
              ),
            ))
          ],
        ),
      ),
    );
  }
}