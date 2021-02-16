import 'package:flutter/material.dart';

class ScreenTiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create a Post"),
        backgroundColor: Colors.green[700],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue[700], 
                            width: 2.5
                            ),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey[700], 
                            width: 2.5
                          ),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      
                    ),
                  ),
            ),

            Container(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  maxLines: 20,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue[700], 
                            width: 2.5
                            ),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey[700], 
                            width: 2.5
                          ),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      
                    ),
                ),
              ),
            Container(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      padding: EdgeInsets.all(15),
                      textColor: Colors.white,
                      color: Colors.green[600],
                      child: Text('Publish'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/second');
                      },
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20),
                      )
                    )
            ),

          ]
        )
      )
    );
  }
}