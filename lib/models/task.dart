class Task{
  String taskName;
  bool taskStatus = false;

  void changeStatus(){
    taskStatus = !taskStatus;
  }

  Task({this.taskStatus,this.taskName});
}