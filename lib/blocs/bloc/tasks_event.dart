part of 'tasks_bloc.dart';

abstract class TasksEvent extends Equatable {
  const TasksEvent();

  @override
  List<Object> get props => [];
}

class AddTask extends TasksEvent {
  final Task task;

  const AddTask({required this.task});
}

class UpdateTask extends TasksEvent {
  final Task task;

  const UpdateTask({required this.task});
}

class DeleteTask extends TasksEvent {
  final Task task;

  const DeleteTask({required this.task});
}
