import 'package:flutter/material.dart';
import 'package:flutter_noblegroves/telas/homeTela.dart';
import 'package:flutter_noblegroves/telas/loginTela.dart';
import 'package:flutter_noblegroves/telas/registroTela.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login': (context) => TelaLogin(),
        '/home': (context) => HomeTela(),
        '/registro': (context) => RegistroTela()
      },
      home: TelaLogin(),
    );
  }
}
