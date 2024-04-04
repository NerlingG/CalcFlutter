// ignore_for_file: unnecessary_new, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Calculadora extends StatefulWidget {
  @override
  State createState() => new CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
//atts
var num1;
var num2;
var resultado=0;

TextEditingController t1 = new TextEditingController(text:"");
TextEditingController t2 = new TextEditingController(text:"");


//limpar
void limpar() {
  setState(() {
    t1.text = "";
    t2.text = "";
    resultado = 0;

  });
}

//soma
void somar() {
  setState(() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    resultado = num1 + num2;
  });
}

//sub
void subtrair() {
  setState(() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    resultado = num1 - num2;
  });
}

//div
void divisao() {
  setState(() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    resultado = num1 / num2;
  });
}

//mult
void mullti() {
  setState(() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    resultado = num1 * num2;
  });
}


  //metodosss
  @override
  Widget build(BuildContext context) {
    return new Scaffold(



        appBar: new AppBar(
          title: new Text("Calculadora Simples - 1º trabalho"),
          backgroundColor: Colors.deepPurpleAccent,
        ),



        body: new Container(
          padding: const EdgeInsets.all(40),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[



              //Texto la
              new Text(
                "Resultado: $resultado",
                style: new TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    backgroundColor: Colors.black),
              ),



              //TF1
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(hintText: "Informe o valor 1"),
                controller: t1,
              ),


              //TF 2
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(hintText: "Informe o valor 2"),
                controller: t2,
              ),


              //Espancamento
              new Padding(padding: const EdgeInsets.only(top: 20)),


//////////Somar

              //Nova linha
              new Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[


                  new MaterialButton(
                    child: new Text(
                      "+",
                      style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      )
                    ),                    
                    color: Colors.black,
                    onPressed: somar,

                  )

                  
                ]


              ),

              new Padding(padding: const EdgeInsets.only(top: 20)),


////////////Subtrair


              //Nova linha
              new Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[


                  new MaterialButton(
                    child: new Text(
                      "-",
                      style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      )
                    ),                    
                    color: Colors.black,
                    onPressed: subtrair,

                  )

                  
                ]

              ), 

new Padding(padding: const EdgeInsets.only(top: 20)),

////////////Divisão


              //Nova linha
              new Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[


                  new MaterialButton(
                    child: new Text(
                      "÷",
                      style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      )
                    ),                    
                    color: Colors.black,
                    onPressed: divisao,

                  )

                  
                ]

              ), 

new Padding(padding: const EdgeInsets.only(top: 20)),

////////////Subtrair


              //Nova linha
              new Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[


                  new MaterialButton(
                    child: new Text(
                      "×",
                      style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      )
                    ),                    
                    color: Colors.black,
                    onPressed: mullti,

                  )

                  
                ]

              ), 

new Padding(padding: const EdgeInsets.only(top: 20)),


////////////Limpar


              //Nova linha
              new Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[


                  new MaterialButton(
                    child: new Text(
                      "LIMPAR",
                      style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      )
                    ),                    
                    color: Colors.black,
                    onPressed: limpar,

                  )

                  
                ]

              ), 

new Padding(padding: const EdgeInsets.only(top: 20)),




            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 170, 147, 255));
  }
}
