import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoy/models/task_data.dart';
import 'package:todoy/models/task_model.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

 

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      color: const Color(0xff757575),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
        ),
        child:  Column(
          children:[
            const SizedBox(
              height: 30,
            ),
           const Text("Add Task", style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30
            ),),
            SizedBox(
              width: 350,
              child:  TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                cursorColor: Colors.lightBlueAccent,
                onChanged: (newText){
                  newTaskTitle = newText;
                },
                
                
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              color: Colors.lightBlueAccent,
              width: 350,
              child: ElevatedButton(
              
                onPressed: (){
                  final task = Task(name:newTaskTitle!,isDone: false); 
                  Provider.of<TaskData>(context,listen: false).addnewTask(task);
                  Navigator.pop(context);
                  
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent
                  
                ),
                child:  const Text("Add",style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
                ),
                textAlign: TextAlign.center,
                ),
              ),
            )
          ] ,),

        ),
    );
  }
}