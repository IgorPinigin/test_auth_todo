import 'package:flutter/material.dart';
import 'package:test_1/constants/colors.dart';

import '../blocs/bloc_export.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: background,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
              color: background,
            ),
            BlocBuilder<TasksBloc, TasksState>(
              builder: (context, state) {
                return GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/tasks'),
                  child: ListTile(
                    leading: const Icon(Icons.folder),
                    title: const Text('My Tasks'),
                    trailing: Text('${state.allTasks.length}'),
                    iconColor: Colors.white,
                    textColor: Colors.white,
                  ),
                );
              },
            ),
            const Divider(),
            BlocBuilder<TasksBloc, TasksState>(
              builder: (context, state) {
                return GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/bin'),
                  child: ListTile(
                    leading: Icon(Icons.delete),
                    title: Text('Bin'),
                    trailing: Text('${state.removedTasks.length}'),
                    iconColor: Colors.white,
                    textColor: Colors.white,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
