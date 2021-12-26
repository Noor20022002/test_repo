import 'package:flutter/material.dart';
import 'package:flutter_app_mouaz_al/models/task.dart';
import 'package:flutter_app_mouaz_al/models/task_list.dart';
import 'package:provider/provider.dart';
class TaskWidget extends StatelessWidget {
  Task task;
  TaskWidget({this.task});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: ()=>context.read<TaskList>().delTask(task),
      title: Text("${task.taskName}", style: TextStyle(
        decoration: task.taskStatus? TextDecoration.lineThrough:null
      ),
      ),
      trailing: Checkbox(
        value: task.taskStatus,
        onChanged: (value) {
          context.read<TaskList>().updateTask(task);
        },
      ),
    );
  }
}
