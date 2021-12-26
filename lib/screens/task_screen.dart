import 'package:flutter/material.dart';
import 'package:flutter_app_mouaz_al/widgets/add_task_wiget.dart';
import 'package:flutter_app_mouaz_al/widgets/tasks_widget.dart';
import '../widgets/header_widget.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [HeaderWidget(), Expanded(child: TasksWidget())],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return AddTaskWidget();

            },
          );
        },
      ),
    );
  }
}
