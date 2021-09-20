import 'package:flutter/material.dart';
import '../ui_elements/form.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
          padding: EdgeInsets.fromLTRB(50, 300, 50, 0),
          child: Column(
            children: [
              Container(
                child: Formfield(),
              ),
              Container(
                child: FlatButton(
                    onPressed: () => {},
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(color: Colors.blue),
                    )),
              ),
              Container(
                  child: Text(
                "Or",
                style: TextStyle(color: Colors.black87),
              )),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("New to Pangea App ?"),
                    FlatButton(
                        onPressed: () => {},
                        child: Text(
                          "Register",
                          style: TextStyle(color: Colors.blue),
                        ))
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
