import 'package:aulas/controller/to_do_list_controller.dart';
import 'package:aulas/models/tarefa.dart';
import 'package:flutter/material.dart';

Widget cardTarefa(Tarefa tarefa){
  return GestureDetector(
    child: Card(
      color: tarefa.completed ? Colors.greenAccent : Colors.amberAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Tarefa : ${tarefa.desc}'),
          Text('Prioridade : ${tarefa.priority}'),
          Text('Tarefa completa: ${tarefa.completed ? 'Realizada' : 'Não realizada'}')
        ],
      )
    ),
  );
}