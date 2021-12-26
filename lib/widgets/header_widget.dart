import 'package:flutter/material.dart';
import '../models/task_list.dart';
import 'package:provider/provider.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            child: Icon(Icons.list),
            backgroundColor: Colors.white,
            foregroundColor: Colors.blue,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "Todoey",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          Row(
            children: [
              Text(
                context.watch<TaskList>().getLen() > 1
                    ? "${context.watch<TaskList>().getLen()} tasks"
                    : "${context.watch<TaskList>().getLen()} task",
                style: TextStyle(color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(   context.watch<TaskList>().getCheckLen() > 1
                    ? "${context.watch<TaskList>().getCheckLen()} checked tasks"
                    : "${context.watch<TaskList>().getCheckLen()} checked task",
                  style: TextStyle(color: Colors.white),),
              )
            ],
          )
        ],
      ),
    );
  }
}
