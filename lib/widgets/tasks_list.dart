import 'package:flutter/material.dart';
import 'package:test_1/blocs/bloc_export.dart';

import '../models/tasks.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
    required this.tasksList,
  });

  final List<Task> tasksList;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: widget.tasksList.length,
          itemBuilder: (context, index) {
            var task = widget.tasksList[index];
            return ListTile(
              title: Text(task.title),
              trailing: Checkbox(
                checkColor: Colors.white,
                activeColor: Colors.black,
                value: task.isDone,
                onChanged: (value) {
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
