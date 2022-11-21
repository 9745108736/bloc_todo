import 'package:flutter/material.dart';

import '../blocs/bloc_exports.dart';
import '../models/task.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
    required Task task,
  }) : _task = task, super(key: key);

  final Task _task;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(_task.title ?? "",style: TextStyle(decoration: _task.isDone! ? TextDecoration.lineThrough : TextDecoration.none),),
      trailing: Checkbox(
          value: _task.isDone,
          onChanged: (value) {
            context.read<TasksBloc>().add(UpdateTask(task: _task));
          }),
      onLongPress: (() =>
          context.read<TasksBloc>().add(DeleteTask(task: _task))),
    );
  }
}
