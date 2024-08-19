import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoy/models/task_data.dart';
import 'package:todoy/models/task_model.dart';
import 'package:todoy/widgets/task_tail.dart';

// ignore: camel_case_types
class TasksList extends StatelessWidget {

  const TasksList({super.key});

 
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, TaskData taskData, Widget? child) { 
        return ListView.builder(itemBuilder: (context,index){
        
      final tasks = taskData.tasks[index];
        return TaskTile(
         taskTail:  tasks.name,
          isChecked:tasks.isDone!,
         checkCallbacks:  (bool?checkbox){
            taskData.updateTasks(tasks);
            
          },
          deleteItem: (){
            taskData.cleanTaskList(tasks);
          },
      );
      
      },
      itemCount:taskData.tasksCount,);

       },
      
    );
  }
}