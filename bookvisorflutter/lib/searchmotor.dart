import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'http.dart';

class searchmotor extends StatefulWidget {
  @override
  _searchmotorState createState() => _searchmotorState();
}

class _searchmotorState extends State<searchmotor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29.5),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
