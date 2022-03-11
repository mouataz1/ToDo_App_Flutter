// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:todov1/screens/add_task_screen.dart';

import '../widgets/tasks_list.dart';
class TasksScreen extends StatelessWidget {
  const TasksScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            isScrollControlled: true,
            
            context: context,
             builder: (context)=>SingleChildScrollView(
               child: Container(
                 padding: EdgeInsets.only(
                   bottom: MediaQuery.of(context).viewInsets.bottom
                 ),
                 child: AddTaskScreen())),
             );
        },
        backgroundColor: Colors.teal[400],
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.blue[400],
      body: Container(
        padding: const EdgeInsets.only(top: 40, left : 20, right: 20, bottom: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.playlist_add_check, size: 40, color: Colors.orange[400]),
                const SizedBox(width: 20),
                const Text('ToDo For ISI4 SOIR', style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),)
              ],
            ),
            const Text('5 Tasks', style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  )
                ),
                child: TasksList(),
              ),
            )
          ],
        ),
      ),
      
    );
  }
}

