import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          AnimatedContainer(
            height: 350,
            duration: Duration(milliseconds: 400),
            //curve: Curves.bounceIn,
            decoration: BoxDecoration(
                color: Colors.yellow[600],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: 180,
                      height: 60,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              shape: StadiumBorder(),
                              elevation: 0),
                          child: Text(
                            'Sing in',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          // shape: StadiumBorder(),
                          // elevation: 0,
                          onPressed: () =>
                              Navigator.pushNamed(context, 'home')),
                    ),
                    Container(
                      width: 180,
                      height: 60,
                      child: RaisedButton(
                          child: Text(
                            'Sing up',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          shape: StadiumBorder(),
                          elevation: 0,
                          color: Colors.white,
                          onPressed: () =>
                              Navigator.pushNamed(context, 'registro')),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
