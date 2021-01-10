import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'http.dart';

class interest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 50, right: 20),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 60.0,
                    width: 50.0,
                    child: Image.asset(
                        "assets/left.svg"), // could not add it , it does not show up .
                  ),
                ),
              ],
            ), // you can put some icons here(it is on the top of the page)
            SizedBox(height: 30),
            Text(
              "Hey Ozan!", // user's name can be added to here
              style: TextStyle(fontSize: 25),
            ), // style could be added for this text
            SizedBox(height: 20),
            Text(
              "Here some recommendations for you...",
              style: TextStyle(color: Colors.grey, fontSize: 25),
            ),
            Row(
              // list the most read genres by this user.(can be like a list or grid.)
              children: <Widget>[],
            ),
          ],
        ),
      ),
    );
  }
}
