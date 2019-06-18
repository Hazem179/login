import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: "Login",
      home: new MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _user = new TextEditingController();
  final TextEditingController _pass = new TextEditingController();
  String _name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      backgroundColor: Colors.tealAccent,
      body: new Container(
        alignment: Alignment.center,
        child: new ListView(
          children: <Widget>[
            new Image.asset(
              "assets/L.png",
              width: 70,
              height: 130,
              color: Colors.black,
            ),
            new Container(
              height: 205.0,
              width: 380.0,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    new BoxShadow(
                        color: Colors.black, offset: new Offset(0.3, 0.3))
                  ],
                  gradient:
                      new LinearGradient(colors: [Colors.red, Colors.purple])),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Column(
                  children: <Widget>[
                    new TextField(
                      textAlign: TextAlign.center,
                      controller: _user,
                      decoration: new InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(41)),
                        hintText: "Username",
                        icon: new Icon(Icons.person),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 7.0),
                      child: new TextField(
                        textAlign: TextAlign.center,
                        controller: _pass,
                        obscureText: true,
                        decoration: new InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(41)),
                          hintText: "Password",
                          icon: new Icon(Icons.security),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0, left: 12.0),
                      child: new Center(
                        child: new Row(
                          children: <Widget>[
                            new Container(
                              margin: const EdgeInsets.only(left: 27),
                              child: new RaisedButton(
                                onPressed: () {
                                  setState(() {
                                    if (_user.text.isNotEmpty &&
                                        _pass.text.isNotEmpty) {
                                      _name = _user.text;
                                    } else {
                                      _name = "nothing";
                                    }
                                  });
                                },
                                color: Colors.white,
                                child: new Text(
                                  "Login",
                                  style: new TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.8,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            new Container(
                              margin: const EdgeInsets.only(left: 120),
                              child: new RaisedButton(
                                onPressed: () {
                                  _pass.clear();
                                  _user.clear();
                                },
                                color: Colors.white,
                                child: new Text(
                                  "clear",
                                  style: new TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.8,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "$_name",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
