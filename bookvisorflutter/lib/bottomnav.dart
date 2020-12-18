import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'http.dart';

class navItem extends StatelessWidget {
  @override
  final String title;
  const navItem({
    Key key,
    this.title,
  }) : super(key: key);
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          // add svg  image here when you can
          Text(
            title,
          ),
        ],
      ),
    );
  }
}
