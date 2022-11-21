import 'package:flutter/material.dart';

import '../blocs/bloc_exports.dart';
import '../models/task.dart';
import '../services/guid_gen.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(children: [
        const Text(
          "Add Task",
          style: TextStyle(fontSize: 24),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          autofocus: true,
          controller: textEditingController,
          decoration: const InputDecoration(
              label: Text(
                "Title",
              ),
              border: OutlineInputBorder()),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(onPressed: () {}, child: const Text("Cancel")),
            ElevatedButton(
                onPressed: () {
                  var _task = Task(
                    title: textEditingController.text,
                    id: GUIGen.idGenerator()
                  );
                  context.read<TasksBloc>().add(AddTask(task: _task));
                  textEditingController.clear();
                  Navigator.pop(context);
                },
                child: const Text("Add")),
          ],
        ),
      ]),
    );
  }
}
