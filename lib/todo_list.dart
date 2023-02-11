import 'package:flutter/material.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Desenvolvimento Mobile I - Uniguaçu'), centerTitle: true,),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('adicionar tarefa'),
        backgroundColor: Colors.greenAccent[700],
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [

        ]
      ),
    );
  }
}