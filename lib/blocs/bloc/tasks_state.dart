// ignore_for_file: public_member_api_docs, sort_constructors_first

//import 'dart:convert';

part of 'tasks_bloc.dart';

class TasksState extends Equatable {
  final List<Task> allTasks;
  final List<Task> removedTasks;
  const TasksState({
    this.allTasks = const <Task>[],
    this.removedTasks = const<Task>[],
  });

  @override
  List<Object> get props => [allTasks];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allTasks': allTasks.map((x) => x.toMap()).toList(),
      'removedTasks': removedTasks.map((x) => x.toMap()).toList(),
    };
  }

  factory TasksState.fromMap(Map<String, dynamic> map) {
    return TasksState(
      allTasks: (map['allTasks'] as List<dynamic>)
          .map((taskMap) => Task.fromMap(taskMap))
          .toList(),
      removedTasks: (map['removedTasks'] as List<dynamic>)
          .map((taskMap) => Task.fromMap(taskMap))
          .toList(),
    );
  }

  String toJson() => json.encode(toMap());

  factory TasksState.fromJson(String source) =>
      TasksState.fromMap(json.decode(source) as Map<String, dynamic>);
}
