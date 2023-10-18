import 'package:flutter/material.dart';

class TelaLogin extends StatefulWidget {
  TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  final formKey = GlobalKey<FormState>();

  final formKeyEmail = GlobalKey<FormState>();

  bool cadastrar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(0, 242, 93, 0.953),
        appBar: AppBar(
          title: const Text(
            'Login - Noble Groves',
            style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
          ),
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
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
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.normal),
                        ),
                        const SizedBox(height: 8),
                        Visibility(
                          visible: cadastrar,
                          child: TextFormField(decoration: const InputDecoration(
                                label: Text("Nome Completo"),
                              ),
                          ),
                        ),
                        Form(
                          key: formKeyEmail,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              label: Text("E-mail"),
                            ),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, insira um endereço de e-mail.';
                              } else if (!RegExp(
                                      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                                  .hasMatch(value)) {
                                return 'Por favor, insira um e-mail válido.';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(height: 8),
                        Form(
                          key: formKey,
                          child: TextFormField(
                            decoration: const InputDecoration(label: Text("Senha")),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                print('$value não inserido');
                                return 'Por favor, insira a senha.';
                              } else if (value.length < 6) {
                                print('error $value');
                                return 'Senha deve ter no mínimo 6 caracteres.';
                              }
                              print('$value ok');
                              return null;
                            },
                            obscureText: true,
                          ),
                          
                        ),
                        Visibility(
                          visible: cadastrar,
                          child: TextFormField(
                              decoration: const InputDecoration(label: Text("Confirme a senha")),
                              obscureText: true,
                            ),
                        ),
                        const SizedBox(height: 8),
                        Visibility(
                          visible: !cadastrar,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Esqueceu a senha ",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        (ElevatedButton(
                          onPressed: () {
                            if ((formKey.currentState?.validate() ?? false) &&
                                (formKeyEmail.currentState?.validate() ?? false)) {
                              Navigator.pushNamed(context, '/home');
                            }
                          },
                          style: const ButtonStyle(
                            minimumSize: MaterialStatePropertyAll(Size(250, 40)),
                            backgroundColor: MaterialStatePropertyAll(Colors.white),
                          ),
                          child: Text((cadastrar)? 'Cadastrar': 'Entrar',
                            style:
                                TextStyle(color: Color.fromRGBO(0, 242, 93, 0.953)),
                          ),
                        )),
                        Divider(),
                        ElevatedButton(
                          style: const ButtonStyle(
                              minimumSize: MaterialStatePropertyAll(Size(250, 40)),
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromRGBO(0, 242, 93, 0.953)),
                              side: MaterialStatePropertyAll(BorderSide(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  width: 1,
                                  style: BorderStyle.solid))),
                          onPressed: () {
                            setState(() {
                                cadastrar = !cadastrar;
                            });
                          },
                          child:  Text((cadastrar)? 'Já tenho uma conta' : 'Criar conta',
                            style:
                                TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}