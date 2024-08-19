
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoy/models/task_data.dart';
import 'package:todoy/models/task_model.dart';
import 'package:todoy/screens/add_task_screen.dart';
import 'package:todoy/widgets/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});


  
  @override
  Widget build(BuildContext context) {
   
    return  Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context, 
          builder: ((context) =>  AddTaskScreen()),
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        child:const Icon(Icons.add,color: Colors.white,),
        ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 60,left:30,right: 30,bottom: 30),
            child:   Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(Icons.list,
                  color: Colors.lightBlueAccent,
                  size: 30,
                  )
                  ),
                const  SizedBox(height: 10,),
               const Text("Todoy",style: TextStyle(
                  fontSize:50,
                  color: Colors.white,
                  fontWeight: FontWeight.w700
                ),),
                Text('${Provider.of<TaskData>(context).tasksCount} Tasks', style:const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),),
             
              ],
              
            ),
          ),
             Expanded(
                  child: Container(
                    padding:const EdgeInsets.symmetric(horizontal: 20),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                    ),
                    child:  const TasksList(),
                  ),
                ),
        ],
      ),
    );
  }
}




