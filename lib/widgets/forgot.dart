import 'package:flutter/material.dart';

class Forgot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Forgot(),
      theme: new ThemeData(primarySwatch: Colors.white),
    );
  }
}

class ForgotPage extends StatefulWidget {
  @override
  State createState() => new ForgotPageState();
}

class ForgotPageState extends State<ForgotPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white,
        body: new Stack(children: <Widget>[
          new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Form(
                    child: new Theme(
                        data: new ThemeData(
                            inputDecorationTheme: new InputDecorationTheme(
                                labelStyle: new TextStyle(
                                    color: Colors.black, fontSize: 20.0))),
                        child: new Container(
                            padding: const EdgeInsets.all(40.0),
                            child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  new TextFormField(
                                      decoration: new InputDecoration(
                                          fillColor: Colors.black,
                                          labelText: "Enter Email"),
                                      keyboardType: TextInputType.emailAddress),
                                  new Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                  ),
                                  new MaterialButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/');
                                    },
                                    color: Colors.grey,
                                    textColor: Colors.black,
                                    child: new Text("Enviar"),
                                    splashColor: Colors.white,
                                  ),
                                ]))))
              ])
        ]));
  }
}
