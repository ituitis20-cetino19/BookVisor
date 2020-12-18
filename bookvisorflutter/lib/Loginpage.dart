import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children : <Widget> [
          Container(
            decoration : BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end : Alignment.bottomCenter,
                colors : [
                  Color(0xFFFFA726),
                  Color(0xFFFF9800),
                  Color(0xFFF57C00),
                  Color(0xFFE65100),
                ],
                stops : [0.1,0.4,0.7,0.9],
              ),
            ),
          ),
          Container(
            height : double.infinity,
            child : SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding : EdgeInsets.symmetric(
                horizontal : 40.0 ,
                vertical : 120.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children : <Widget> [
                  Text(
                    'Sign In',
                    style: TextStyle(
                      color :  Colors.black,
                      fontFamily: 'OpenSans',
                      fontSize : 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      Text(
                        'Email',
                      ),
                      SizedBox(height: 30.0),
                      Material(
                        color: Color(0xFFFFA726),
                        elevation: 20.0,
                        child : Container(
                          alignment: Alignment.centerLeft,
                          height : 50.0,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            style : TextStyle(color: Colors.white),
                            decoration : InputDecoration(
                              border : InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 20.0),
                              prefixIcon : Icon(
                                Icons.email,
                                color : Colors.white,
                              ),
                              hintText: 'Enter Your Email',
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 30.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      Text(
                        'Password',
                      ),
                      SizedBox(height: 30.0),
                      Material(
                        color: Color(0xFFF57C00),
                        elevation: 10.0,
                        child : Container(
                          alignment: Alignment.centerLeft,
                          height : 50.0,
                          child: TextField(
                            obscureText: true,
                            keyboardType: TextInputType.emailAddress,
                            style : TextStyle(color: Colors.white),
                            decoration : InputDecoration(
                              border : InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 20.0),
                              prefixIcon : Icon(
                                Icons.lock,
                                color : Colors.white,
                              ),
                              hintText: 'Enter Your Password',
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child : FlatButton(
                      onPressed: () {

                      },
                      child : Text(
                          'Forgot Password?'
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    width: double.infinity,
                    child: RaisedButton(
                      color: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child : Text(
                          'LOGIN'
                      ),
                      onPressed: () {

                      },
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Container(
                      child: Text(
                          'OR'
                      )
                  ),
                  SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget> [

                      GestureDetector(

                        onTap: () {


                        },
                        child: Container(

                          height: 60.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color : Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color : Colors.black,
                                offset : Offset(0,2),
                                blurRadius: 6.0,
                              ),
                            ],
                            // maybe add boxshadow here
                            image: DecorationImage(
                              image: AssetImage('assets/google.jpg'),
                            ),
                          ),
                        ),
                      ),

                      GestureDetector(

                        onTap: () {


                        },
                        child: Container(

                          height: 60.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color : Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color : Colors.black,
                                offset : Offset(0,2),
                                blurRadius: 6.0,
                              ),
                            ],
                            // maybe add boxshadow here
                            image: DecorationImage(
                              image: AssetImage('assets/facebook.png'),
                            ),
                          ),
                        ),
                      ),





                    ],


                  ),

                ],
              ),

            ),
          ),

        ],

      ),



    );






  }


}

