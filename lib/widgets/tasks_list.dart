import 'package:flutter/material.dart';
import 'package:test_1/blocs/bloc_export.dart';

import '../models/tasks.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
    required this.tasksList,
  });

  final List<Task> tasksList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: tasksList.length,
          itemBuilder: (context, index) {
            var task = tasksList[index];
            return ListTile(
              title: Text(task.title),
              trailing: Checkbox(
                value: task.isDone,
                onChanged: (value) { 
                  print(value);
                  context.read<TasksBloc>().add(UpdateTask(task: task));
                },
                
              ),
              onLongPress: () {
                context.read<TasksBloc>().add(DeleteTask(task: task));
              },
            );
          }),
    );
  }
}
