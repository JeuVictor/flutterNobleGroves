import 'package:flutter/material.dart';

class RegistroTela extends StatelessWidget {
  const RegistroTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(0, 242, 93, 0.953),
        appBar: AppBar(
          title: const Text(
            'Registro - Noble Groves',
            style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
          ),
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              const Text(
              ' Noble \n Groves',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.normal,
                  color: Color.fromRGBO(255, 255, 255, 0.75),
                  fontFamily: 'PlayfairDisplay'),
            ),
             Image.asset(
                'assents/img/NobleGroves_semfundos.png',
                width: 165,
                height: 137.21,
              ),
            ],),
            const Text(
              'Criar conta:',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
            ),
            (ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Text('Confirmar'),
            )),
            (ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text('Voltar'),
            )),
          ],
        ));
  }
}
