import 'package:flutter/material.dart';
import 'package:flutter_noblegroves/services/auth_services.dart';

class HomeTela extends StatefulWidget {
  const HomeTela({super.key});

  @override
  State<HomeTela> createState() => _HomeTelaState();
}

class _HomeTelaState extends State<HomeTela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 242, 93, 0.953),
      appBar: AppBar(
        title: const Text(
          'Home - Noble Groves',
          style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        foregroundColor: Colors.black,
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.logout_outlined),
            title: const Text('Sair'),
            onTap: () {
              AuthService().logOut();
            },
          ),
        ],
      )),
      body: ListView(children: [
        const Text(
          'Noble Groves',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.normal,
              color: Color.fromRGBO(255, 255, 255, 0.75),
              fontFamily: 'PlayfairDisplay'),
        ),
        Center(
          child: Image.asset(
            'assents/img/NobleGroves_semfundos.png',
            width: 165,
            height: 137.21,
          ),
        ),
      ]),
    );
  }
}
