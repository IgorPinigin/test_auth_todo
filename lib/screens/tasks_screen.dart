import 'package:flutter/material.dart';
import 'package:test_1/constants/colors.dart';
import 'package:test_1/screens/my_drawer.dart';
import '../blocs/bloc_export.dart';
import '../models/tasks.dart';
import '../widgets/tasks_list.dart';
import 'add_task_screen.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({
    super.key,
  });

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  void _addTask(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => SingleChildScrollView(
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
          backgroundColor: background,
          appBar: AppBar(
            backgroundColor: buttonColor,
          ),
          drawer: MyDrawer(),
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
            backgroundColor: buttonColor,
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}

