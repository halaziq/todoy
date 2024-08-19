import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoy/models/task_model.dart';

class TaskData extends ChangeNotifier{

   List<Task> _tasks = [
    Task(name: 'buy milk',isDone: false),
    Task(name: 'buy eggs', isDone: false),
    Task(name: 'buy water',isDone: false)
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);

  }
  
  int get tasksCount{
    return _tasks.length;
  }

  void addnewTask(Task task){
    _tasks.add(task);
    notifyListeners();
  }

  void updateTasks(Task task){
    task.toggleDone();
    notifyListeners();

  }

  void cleanTaskList(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

}