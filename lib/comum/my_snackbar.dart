import 'package:flutter/material.dart';

showSnackBar(
    {required BuildContext context,
    required String texto,
    bool isError = true}) {
  SnackBar snackBar = SnackBar(
    content: Text(texto, style: TextStyle(color: (isError)? Colors.red : Colors.green[700]
     ),),
    backgroundColor: Colors.white,
    duration: const Duration(seconds: 3),
    
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
