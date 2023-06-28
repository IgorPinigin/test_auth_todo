import 'package:flutter/material.dart';
import '../blocs/bloc_export.dart';
import '../models/tasks.dart';
import '../widgets/tasks_list.dart';
import 'add_task_screen.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({
    super.key,
  });

  

  void _addTask(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const SingleChildScrollView(
        child: AddTaskScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(
      builder: (context, state) {
        List<Task> tasksList = state.allTasks;
        return Scaffold(
          body: Column(
            children: [
              TasksList(tasksList: tasksList),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _addTask(context);
            },
            tooltip: 'AddTask',
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}

