import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_bloc/blocs/bloc/tasks_bloc.dart';

import '../models/task.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    Key? key,
    required this.taskList,
  }) : super(key: key);

  final List<Task> taskList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          var _task = taskList[index];
          return ListTile(
            title: Text(_task.title ?? ""),
            trailing: Checkbox(
                value: _task.isDone,
                onChanged: (value) {
                  context.read<TasksBloc>().add(UpdateTask(task: _task));
                }),
            onLongPress: (() =>
                context.read<TasksBloc>().add(DeleteTask(task: _task))),
          );
        },
        itemCount: taskList.length,
      ),
    );
  }
}
