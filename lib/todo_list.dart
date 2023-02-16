import 'package:aulas/controller/to_do_list_controller.dart';
import 'package:aulas/widgets/card_tarefa.dart';
import 'package:flutter/material.dart';

import 'models/tarefa.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
TextEditingController controllerDesc = TextEditingController();
TextEditingController controllerPriority = TextEditingController();
ToDoListController toDoListController = ToDoListController();
bool isCompleted = false;

void _showModal(context){
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc){
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: controllerDesc,
                decoration: const InputDecoration(border: InputBorder.none,
                  icon: Icon(Icons.task_alt),
                  hintText: 'Descrição da sua tarefa'),
              ),
            ),  
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: controllerPriority,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(border: InputBorder.none,
                  icon: Icon(Icons.priority_high),
                  hintText: 'Prioridade da sua tarefa'),
              ),
            ),
            StatefulBuilder(
              builder: (context, StateSetter setState) {
                return CheckboxListTile(
                  title: const Text("Completa"),
                  value: isCompleted, 
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value){
                    setState(() {
                      isCompleted = value!;
                    });
                  }
                );
              }
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  toDoListController.addTarefa(controllerDesc.text, int.parse(controllerPriority.text), isCompleted);
                });
              }, 
              child: const Text("CRIAR TAREFA")
            )
          ],
        );
      }
    );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Tarefas'), centerTitle: true, backgroundColor: Colors.cyan,),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showModal(context),
        backgroundColor: Colors.greenAccent[700],
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: toDoListController.tarefas.length,
        itemBuilder: (context, i){
          return GestureDetector(
            onTap: (){
              setState(() {
                toDoListController.editTarefa(toDoListController.tarefas[i], i);
              });
            },
            child: cardTarefa(toDoListController.tarefas[i])
          );
        }
      )
    );
  }
}