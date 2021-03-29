import 'package:depositos/pages/searchpage.dart';
import 'package:flutter/material.dart';

import 'package:depositos/pages/homepage.dart';
import 'package:depositos/pages/registrepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Depósitos',
      initialRoute: 'home',
      routes: {
        'home': (_) => HomePage(),
        'registro': (_) => RegistrePage(),
        'buscar': (_) => SearchPage()
      },
    );
  }
}
