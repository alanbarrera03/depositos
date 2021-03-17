import 'package:flutter/material.dart';

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
              Container(child: Icon(Icons.arrow_back_rounded, size: 30)),
              Container(
                  child: Text(
                'Registre',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              )),
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
    )
  ]);
}
