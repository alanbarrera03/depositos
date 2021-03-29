import 'package:depositos/pages/homepage.dart';
import 'package:depositos/pages/searchpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RegistrePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[800],
        body: Stack(children: <Widget>[
          _buttonsHigh(context),
          _backgroundRegistre(context),
        ]));
  }
}

Widget _buttonsHigh(BuildContext context) {
  return SafeArea(
    child: Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  child: FloatingActionButton(
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.black,
                        size: 30,
                      ),
                      backgroundColor: Colors.yellow[800],
                      elevation: 0.0,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      })),
              Container(
                child: ElevatedButton(
                    child: Text(
                      'Registre',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.yellow[800],
                        shape: StadiumBorder(),
                        elevation: 0),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SearchPage()));
                    }),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Container(
                    alignment: Alignment.topLeft,
                    height: 35,
                    // padding: EdgeInsets.all(20),
                    child: (Text(
                      'Sing In',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ))),
                Container(
                  alignment: Alignment.center,
                  height: 90,
                  // padding: EdgeInsets.all(15),
                  child: Text(
                    'Aplicación para que puedas encontrar cerca de tu ubicación '
                    'Depósitos y tiendas dónde se vende cerveza en cualquier horario '
                    'Y puedas alargar más la fiesta.',
                    // softWrap: true,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget _backgroundRegistre(BuildContext context) {
  return Column(mainAxisAlignment: MainAxisAlignment.end, children: [
    Container(
      height: 500,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8),
                child: TextField(
                    autofocus: false,
                    style: TextStyle(fontSize: 20.0, color: Color(0xFFbdc6cf)),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[150],
                      hintText: 'Username',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: new BorderSide(color: Colors.white),
                        borderRadius: new BorderRadius.circular(25.7),
                      ),
                    )),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: TextField(
                    autofocus: false,
                    style: TextStyle(fontSize: 20.0, color: Color(0xFFbdc6cf)),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[150],
                      hintText: 'Email',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: new BorderSide(color: Colors.white),
                        borderRadius: new BorderRadius.circular(25.7),
                      ),
                    )),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: TextField(
                    autofocus: false,
                    style: TextStyle(fontSize: 20.0, color: Color(0xFFbdc6cf)),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[150],
                      hintText: 'Password',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: new BorderSide(color: Colors.white),
                        borderRadius: new BorderRadius.circular(25.7),
                      ),
                    )),
              ),
              Container(
                child: TextButton(
                  onPressed: () {},
                  child: Text('Forgot'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 400,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          shape: StadiumBorder(),
                          elevation: 0),
                      child: Text(
                        'Sing in',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                      onPressed: () => Navigator.pushNamed(context, 'home')),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ]);
}
