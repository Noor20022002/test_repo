import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskList extends ChangeNotifier {
  List<Task> tasks = [
    Task(taskStatus: false, taskName: "Read a book"),
    Task(taskStatus: true, taskName: "Travel to paris")
  ];

  void addTask(String txt) {
    tasks.any((task) {
      if (task.taskName == txt)
        return true;
      else {
        tasks.add(Task(taskName: txt, taskStatus: false));
        return false;
      }
    });

    notifyListeners();
  }

  void updateTask(Task task) {
    tasks.where((element) {
      if (element == task) {
        element.changeStatus();
        return true;
      } else
        return false;
    });
    var i = tasks.indexOf(task);
    task.changeStatus();
    tasks.remove(task);
    tasks.insert(i, task);
    notifyListeners();
  }

  void delTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }

  int getLen() {
    return tasks.length;
  }

  int getCheckLen() {
    int ind = 0;
    tasks.forEach((element) {
      if (element.taskStatus) ind++;
    });

    return ind;
  }
}
