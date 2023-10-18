
import 'package:flutter/material.dart';

class HomeTela extends StatelessWidget {
  const HomeTela({super.key});

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
        ),
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