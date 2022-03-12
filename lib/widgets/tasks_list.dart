import 'package:flutter/material.dart';
import 'package:todov1/widgets/task_tail.dart';

import '../models/task.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks =[
    Task(name: 'make presentation'),
    Task(name: 'create project'),
    Task(name: 'build app'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index){
      return TaskTile(
        isChecked: tasks[index].isDone,
         taskTitle: tasks[index].name,
         checkBoxChange: ( newVal){
        setState(() {
          tasks[index].doneChange();
        });
       }
         );
    },
    );
    /* return ListView(
      children: [
        TaskTile(
          taskTitle: tasks[0].name,
          isChecked: tasks[0].isDone,
        ),
        TaskTile(
          taskTitle: tasks[1].name,
          isChecked: tasks[1].isDone,
        ),
        TaskTile(
          taskTitle: tasks[2].name,
          isChecked: tasks[2].isDone,
        ),
      ],
    ); */
  }
}

