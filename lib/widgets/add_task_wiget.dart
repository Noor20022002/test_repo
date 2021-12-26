import 'package:flutter/material.dart';
import 'package:flutter_app_mouaz_al/models/task_list.dart';
import 'package:provider/provider.dart';

class AddTaskWidget extends StatelessWidget {
  GlobalKey<FormState> fKey = GlobalKey<FormState>();
  var c = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),

      child: Form(
        key: fKey,
        child: Column(
          children: [
            TextFormField(
              autofocus: true,
              decoration: InputDecoration(

                enabled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(5),
                  )
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(5),
                    )
                ),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.all(Radius.circular(5),
                    )
                ),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.all(Radius.circular(5),
                    )
                )
              ),
              controller: c,
              validator: (value) {
                if (value == null || value.length == 0)
                  return "Can't add an empty task";
                else
                  return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: OutlinedButton(
                  onPressed: () {
                    if (fKey.currentState.validate()) {
                      context.read<TaskList>().addTask(c.text);
                      Navigator.of(context).pop();
                    }
                  },
                  style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(double.infinity/4,50)),backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  child: Text(
                    "Add Task",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
