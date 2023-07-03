import 'package:flutter/material.dart';

import '../blocs/bloc_export.dart';
import '../constants/colors.dart';
import '../models/tasks.dart';

class AddTaskScreen extends StatelessWidget {
  TextEditingController titleController = TextEditingController();

  AddTaskScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        children: [
          const Text(
            'Add Task',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            // autofocus: true,
            textInputAction: TextInputAction.done,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
                fillColor: background,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(80),
                  borderSide: BorderSide.none,
                )),
            controller: titleController,
            // onSaved: (newValue) {
            //   setState(() {
            //     titleController.text = newValue!;
            //   });
            // },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  var task = Task(
                    title: titleController.text,
                  );
                  context.read<TasksBloc>().add(AddTask(task: task));
                  print(task);
                  Navigator.pop(context);
                },
                child: const Text('Add'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
