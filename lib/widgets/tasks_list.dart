import 'package:flutter/material.dart';
import 'package:test_1/blocs/bloc_export.dart';
import 'package:test_1/constants/colors.dart';

import '../models/tasks.dart';
import 'task_tile.dart';

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
            return TaskTile(task: task);
          }),
    );
  }
}

