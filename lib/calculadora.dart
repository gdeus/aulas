import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({ Key? key }) : super(key: key);

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  TextEditingController primeiroNumero = TextEditingController();
  TextEditingController segundoNumero = TextEditingController();
  double resultado = 0;
  @override
  Widget build(BuildContext context) {

    double soma(double numero1, double numero2){
      double resultado = numero1 + numero2;
      print(resultado);
      return resultado;
    }

    double subtracao(double numero1, double numero2){
      double resultado = numero1 - numero2;
      print(resultado);
      return resultado;
    }

    double multiplicacao(double numero1, double numero2){
      double resultado = numero1 * numero2;
      print(resultado);
      return resultado;
    }

    return Scaffold(
      appBar: AppBar(title: Text('Calculadora'),),
      body: Column(children: [
        TextField(
          controller: primeiroNumero,
        ),
        TextField(
          controller: segundoNumero,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  resultado = soma(double.parse(primeiroNumero.text), double.parse(segundoNumero.text));
                });
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 50,
                color: Colors.blue,
                child: Text('+'),
              ),
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  resultado = subtracao(double.parse(primeiroNumero.text), double.parse(segundoNumero.text));
                });
              },
              child: Container(
                height: 50,
                width: 50,
                color: Colors.blue,
                child: Text('-'),
              ),
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  resultado = multiplicacao(double.parse(primeiroNumero.text), double.parse(segundoNumero.text));
                });
              },
              child: Container(
                height: 50,
                width: 50,
                color: Colors.blue,
                child: Text('X'),
              ),
            ),
            Text('$resultado')
          ],
        )
      ],),
    );
  }
}