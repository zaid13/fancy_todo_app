

import 'package:fancy_todo_app/model/task_model.dart';
import 'package:flutter/material.dart';

class TaskListProvider with ChangeNotifier {
  List<TaskModel> _taskModel = [];

  List<TaskModel> get tasks => _taskModel.reversed.toList();

  void addTaks(TaskModel ts) {
    _taskModel.add(ts);
    notifyListeners();
  }
  void deleteAll(){
    _taskModel = [];
    notifyListeners();
  }

}