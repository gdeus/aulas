import 'package:aulas/models/tarefa.dart';

class ToDoListController{
  List<Tarefa> tarefas = [];

  void addTarefa(String desc, int priority, bool completed){
    Tarefa tarefa = Tarefa(desc, priority, completed);
    tarefas.add(tarefa);
  }

  void editTarefa(Tarefa tarefa, int position){
    tarefa.completed = true;
    tarefas[position] = tarefa;
  }
}