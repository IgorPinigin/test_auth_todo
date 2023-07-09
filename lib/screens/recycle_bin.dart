import 'package:flutter/material.dart';

import '../blocs/bloc_export.dart';
import '../constants/colors.dart';
import '../widgets/tasks_list.dart';
import 'my_drawer.dart';

class RecycleBin extends StatelessWidget {
  const RecycleBin({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: buttonColor,
          ),
          drawer: MyDrawer(),
          body: Column(
            children: [
              TasksList(tasksList: state.removedTasks),
              
            ],
          ),
        );
      },
    );
  }
}
