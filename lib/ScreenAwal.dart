import 'package:flutter/material.dart';

class ScreenAwal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(10,75,10,75),
        child: ListView(
          children: <Widget>[
            //Ini Logo
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text(
                'Logo',
                style: TextStyle(
                    color: Colors.green[800],
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              )
            ),
            //End Logo

            // Nama Lengkap
            Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.account_box,
                        color: Colors.green[700],
                        size: 30,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green[200], 
                            width: 3.5
                            ),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green[700], 
                            width: 3.5
                          ),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      hintText: 'Nama Lengkap',
                    ),
                  ),
            ),
            // End Nama Lengkap

            // Email
            Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.alternate_email,
                        color: Colors.green[700],
                        size: 30,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green[200], 
                            width: 3.5
                            ),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green[700], 
                            width: 3.5
                          ),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      hintText: 'Email Pengguna',
                    ),
                  ),
            ),
            // End Email

            // Password
            Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.green[700],
                        size: 30,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green[200], 
                            width: 3.5
                            ),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green[700], 
                            width: 3.5
                          ),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      hintText: 'Password',
                    ),
                  ),
            ),
            // End Password
            // Confirm Password
            Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.green[700],
                        size: 30,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green[200], 
                            width: 3.5
                            ),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green[700], 
                            width: 3.5
                          ),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      hintText: 'Confirm Password',
                    ),
                  ),
            ),
            // End Confirm Password
            // Tombol Login
            Container(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      padding: EdgeInsets.all(15),
                      textColor: Colors.white,
                      color: Colors.green[600],
                      child: Text('Sign Up'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/second');
                      },
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20),
                      )
                    )
          ),
          //End Tombol Login
          Container(
                    padding: EdgeInsets.all(25),
                    child: Row(
                      children: <Widget>[
                        Text('Does not have account? '),
                        InkWell(
                            child: new Text('Sign In',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green[700]
                                      ),
                                    ),
                            onTap: (){
                              Navigator.pushNamed(context, '/second');
                            }
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    )
          )

          ],
        ),
      )
    );
  }
}