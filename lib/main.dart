import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_noblegroves/firebase_options.dart';
import 'package:flutter_noblegroves/telas/homeTela.dart';
import 'package:flutter_noblegroves/telas/loginTela.dart';
import 'package:flutter_noblegroves/telas/registroTela.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
