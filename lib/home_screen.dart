import 'package:aulas/widgets/row_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Desenvolvimento Mobile I - Uniguaçu'), centerTitle: true,),
      body: Column(
        children: [
          rowButton(Icons.calculate, "Calculadora", () => print('chamando a calculadora')), 
          rowButton(Icons.task_sharp, "Lista de Tarefas", () => print('chamando a tela de lista de tarefas')), 
        ],
      ), 
    );
  }
}