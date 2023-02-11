import 'package:aulas/widgets/calc_button.dart';
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
  String valueString = '';
  double value1 = 0;
  double value2 = 0;
  String? expression;
  @override
  Widget build(BuildContext context) {

    void reset(){
      resultado = 0;
      valueString = '';
      value1 = 0;
      value2 = 0;
      expression = null;

      setState(() {
        
      });
    }

    void changeValue(String newValue){
      valueString = valueString + newValue;
      setState(() {
        
      });
    }

    void doExpression(String expressionSimbol){
      if(expression == null){
        print('entrei no expression null');
        print(valueString);
        expression = expressionSimbol;
        value1 = double.parse(valueString);
        valueString = '';
      }
      setState(() {
        
      });
    }

    void result(){
      value2 = double.parse(valueString);
      switch(expression) { 
        case '+': { 
          valueString = (value1 + value2).toString();
        } 
        break; 
        
        case '-': { 
          valueString = (value1 - value2).toString();
        } 
        break; 

        case 'X': { 
          valueString = (value1 * value2).toString();
        } 
        break;

        case '/': { 
          valueString = (value1 / value2).toString();
        } 
        break; 
      } 
      setState(() {
        
      });
    }


    return Scaffold(
      appBar: AppBar(title: const Text('Calculadora'),),
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(20),
            height: 90,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 3.0),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(valueString, style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32.0
            ),),
          ),
          Wrap(
            children: [
              calcButton('1', changeValue, false),
              calcButton('2', changeValue, false),
              calcButton('3', changeValue, false),
              calcButton('4', changeValue, false),
              calcButton('5', changeValue, false ),
              calcButton('6', changeValue, false),
              calcButton('7', changeValue, false),
              calcButton('8', changeValue, false),
              calcButton('9', changeValue, false),
              calcButton('0', changeValue, false),
              calcButton('+', doExpression, false),
              calcButton('-', doExpression, false),
              calcButton('X', doExpression, false),
              calcButton('/', doExpression, false),
              calcButton('=', result, true),
              calcButton('AC', reset, true),
            ],
          )
        ]
        ,),
    );
  }
}