import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_noblegroves/firebase_options.dart';
import 'package:flutter_noblegroves/telas/homeTela.dart';
import 'package:flutter_noblegroves/telas/loginTela.dart';

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
    return const MaterialApp(
      home: routesTelas(),
    );
  }
}

class routesTelas extends StatelessWidget {
  const routesTelas({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.userChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const HomeTela();
          } else {
            return TelaLogin();
          }
          
        });
  }
}
