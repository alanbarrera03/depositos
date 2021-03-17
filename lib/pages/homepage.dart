import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      _background(context),
    ]));
  }
}

Widget _background(BuildContext context) {
  return Column(mainAxisAlignment: MainAxisAlignment.end, children: [
    Container(
      height: 350,
      decoration: BoxDecoration(
          color: Colors.yellow[800],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: Container(
          padding: EdgeInsets.all(25),
          child: Row(
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 80,
                      padding: EdgeInsets.all(20),
                      child: (Text(
                        'Welcome',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ))),
                  Container(
                    height: 100,
                    padding: EdgeInsets.all(15),
                    child: Text(
                      'Aplicación para que puedas encontrar cerca de tu ubicación '
                      'Depósitos y tiendas dónde se vende cerveza en cualquier horario '
                      'Y puedas alargar más la fiesta.',
                      softWrap: true,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 100,
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: <Widget>[
                        Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 70,
                                width: 160,
                                padding: EdgeInsets.all(8),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.black,
                                        shape: StadiumBorder(),
                                        elevation: 0),
                                    child: Text(
                                      'Sing in',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 22),
                                    ),
                                    onPressed: () =>
                                        Navigator.pushNamed(context, 'home')),
                              ),
                              Container(
                                height: 70,
                                width: 160,
                                padding: EdgeInsets.all(8),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        shape: StadiumBorder(),
                                        elevation: 0),
                                    child: Text(
                                      'Sing up',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 22),
                                    ),
                                    onPressed: () => Navigator.pushNamed(
                                        context, 'registro')),
                              )
                            ])
                      ],
                    ),
                  )
                ],
              ))
            ],
          )),
    )
  ]);
}
