import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'grids.dart' as grids;
import 'http.dart';
import 'bottomnav.dart' as bottomNavItem;
import 'preferences.dart' as preferences;
import 'searchmotor.dart' as searchmotor;
import 'Loginpage.dart' as loginpage;
import 'Constants.dart' as constants;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BookVisor',
      theme: ThemeData(
        fontFamily: 'Cairo',
        textTheme: Theme.of(context)
            .textTheme
            .apply(displayColor: Color(0XFF222B45)), // kTextColor
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; // gives the total height and width of our page
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .55,
            decoration: BoxDecoration(
              color: Color(0xFF6372f5),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color(0xFFFF4B0082),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Text(
                    'BookVisor',
                    style: Theme.of(context)
                        .textTheme
                        .display1
                        .copyWith(fontWeight: FontWeight.w300),
                  ),
                  Container(
                    // for the search field
                    margin: EdgeInsets.symmetric(vertical: 30),
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
                  ),
                  grids.grids(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Text('calendar'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('Sign In'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('calendar'),
            icon: Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}
