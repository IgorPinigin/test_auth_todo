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
    on<InitTask>(_onInitTask);
    on<AddTask>(_onAddTask);
    on<UpdateTask>(_onUpdateTask);
    on<DeleteTask>(_onDeleteTask);
  }

  void _onInitTask(InitTask event, Emitter<TasksState> emit){
  final state = this.state;
  //emit(TasksState(allTasks: allTasks));
  }

  void _onAddTask(AddTask event, Emitter<TasksState> emit) {
    final state = this.state;
    emit(TasksState(allTasks: List.from(state.allTasks)..add(event.task)));
  }
 
  void _onUpdateTask(UpdateTask event, Emitter<TasksState> emit) {
    final state = this.state;
    final task = event.task;
    List<Task> allTasks = List.from(state.allTasks);
    task.isDone = event.isDone;
    emit(TasksState(allTasks: allTasks));
  }

  void _onDeleteTask(DeleteTask event, Emitter<TasksState> emit) {
    final state = this.state;
    emit(TasksState(allTasks: List.from(state.allTasks)..remove(event.task)));
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
