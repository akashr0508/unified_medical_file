import 'package:flutter/material.dart';
import '../pages/home_page.dart';

class Formfield extends StatefulWidget {
  @override
  FormfieldState createState() => FormfieldState();
}

class FormfieldState extends State<Formfield> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    myController1.dispose();
    myController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blue, width: 2),
                color: Colors.white),
            child: Container(
              padding: EdgeInsets.only(left: 10),
              child: TextFormField(
                validator: (value) =>
                    value.isEmpty ? 'This field cannot be blank' : null,
                controller: myController1,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: 'Username or Email',
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blue, width: 2),
                color: Colors.white),
            child: Container(
              padding: EdgeInsets.only(left: 10),
              child: TextFormField(
                validator: (valuePassword) =>
                    valuePassword.isEmpty ? 'Password cannot be blank' : null,
                controller: myController2,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: 'Password',
                ),
              ),
            ),
          ),
          Container(
            width: 300,
            margin: EdgeInsets.only(top: 5),
            child: RaisedButton(
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Homepage(myController1.text),
                    ),
                  );
                },
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}
