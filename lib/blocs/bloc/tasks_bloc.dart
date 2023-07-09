// ignore: depend_on_referenced_packages
//import 'package:bloc/bloc.dart';
import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:test_1/models/tasks.dart';

import '../bloc_export.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';

class TasksBloc extends HydratedBloc<TasksEvent, TasksState> {
  TasksBloc() : super(const TasksState()) {
    on<RemoveTask>(_onRemoveTask);
    on<AddTask>(_onAddTask);
    on<UpdateTask>(_onUpdateTask);
    on<DeleteTask>(_onDeleteTask);
  }
  
  void _onAddTask(AddTask event, Emitter<TasksState> emit) {
    final state = this.state;
    emit(TasksState(
      allTasks: List.from(state.allTasks)..add(event.task),
      removedTasks: state.removedTasks,
    ));
    //print(state.allTasks);
  }

  void _onUpdateTask(UpdateTask event, Emitter<TasksState> emit) {
    final state = this.state;
    final task = event.task;
    final int index = state.allTasks.indexOf(task);
    List<Task> allTasks = List.from(state.allTasks)..remove(task);
    task.isDone == false
        ? allTasks.insert(index, task.copyWith(isDone: true))
        : allTasks.insert(index, task.copyWith(isDone: false));
    emit(TasksState(allTasks: allTasks,removedTasks: state.removedTasks,));
  }

  void _onDeleteTask(DeleteTask event, Emitter<TasksState> emit) {
    final state = this.state;
    emit(TasksState(removedTasks: List.from(state.removedTasks)..remove(event.task), allTasks: state.allTasks));
  }

  void _onRemoveTask(RemoveTask event, Emitter<TasksState> emit) {
    final state = this.state;
    emit(
      TasksState(
          allTasks: List.from(state.allTasks)..remove(event.task),
          removedTasks: List.from(state.removedTasks)
            ..add(event.task.copyWith(isDeleted: true))),
    );
  }

  @override
  TasksState? fromJson(Map<String, dynamic> json) {
    return TasksState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(TasksState state) {
    return state.toMap();
  }
}
