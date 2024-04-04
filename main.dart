import 'package:flutter/material.dart';
import 'package:flutter_application_1/Calculadora.dart';

void main() {
  runApp(MyAPP());

}

class MyAPP extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return new MaterialApp(
      title: "Calculadora Simples - 1º trabalho",
      theme: new ThemeData(
       primarySwatch: Colors.deepPurple
       ),
      home: new Calculadora()
      );
    
  }
}
