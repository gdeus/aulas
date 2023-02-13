import 'package:aulas/calculadora.dart';
import 'package:aulas/todo_list.dart';
import 'package:aulas/widgets/row_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  void navigationToCalculator(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Calculadora()),
    );
  }

  void navigationToDoList(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ToDoList()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Desenvolvimento Mobile I - Uniguaçu'), centerTitle: true,),
      body: Column(
        children: [
          Image.network('https://uniguacu.com.br/wp-content/uploads/2020/08/cropped-Unigua%C3%A7u-%C3%8Dcone.png', width: 200,),
          rowButton(Icons.calculate, "Calculadora", () => navigationToCalculator()), 
          rowButton(Icons.task_sharp, "Lista de Tarefas", () => navigationToDoList()), 
        ],
      ), 
    );
  }
}