import 'package:flutter/material.dart';

class ItemContainer extends StatelessWidget {
  var color;
  var icon;
  var text;
  var description;
  ItemContainer({this.color, this.icon, this.text, this.description});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 7),
            ),
          ],
        ),
        width: 200,
        height: 80,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Icon(
                icon,
                color: Colors.white,
                size: 40,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 5),
              width: 300,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        text,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      description,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
