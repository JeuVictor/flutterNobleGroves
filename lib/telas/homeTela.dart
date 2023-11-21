import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_noblegroves/services/auth_services.dart';
import 'package:http/http.dart' as http;

class HomeTela extends StatefulWidget {
  const HomeTela({super.key});

  @override
  State<HomeTela> createState() => _HomeTelaState();
}

class _HomeTelaState extends State<HomeTela> {
  FirebaseFirestore db = FirebaseFirestore.instance;

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
        ElevatedButton(
            onPressed: () => getDataBase(), child: Text('print docments'))
      ]),
    );
  }

  void getDataBase() async {
    var produtos = [];
    QuerySnapshot getDB = await db.collection('produtos').get();
    getDB.docs.forEach((element) {
      produtos.add(element.data());
    });
    produtos.forEach((element) {
      print(element);
    });
  }
}
