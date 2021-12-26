import 'package:flutter/material.dart';
import 'package:flutter_app_mouaz_al/models/task_list.dart';
import 'package:flutter_app_mouaz_al/widgets/task_widdget.dart';
import 'package:provider/provider.dart';
class TasksWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),
      child: ListView.builder(
        itemCount: context.watch<TaskList>().getLen(),
        itemBuilder: (context, index) {
        return TaskWidget(task: context.watch<TaskList>().tasks[index],);
      },),
    );
  }
}
