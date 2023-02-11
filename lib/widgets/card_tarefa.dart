import 'package:flutter/material.dart';

Widget cardTarefa(String name, int hours, bool complete){
  return Card(
    child: Column(
      children: [
        Text('Tarefa : $name'),
        Text('Previsão de tempo : $hours'),
        Text('Tarefa completa: $complete')
      ],
    )
  );
}