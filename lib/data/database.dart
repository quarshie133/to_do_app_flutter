import 'package:hive_flutter/hive_flutter.dart';

class ToDODataBase {
  List toDoList = [];
  // reference our box
  final _myBox = Hive.box('mybox');

  // run this method if this is the 1st time opening this app
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercises", false]
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void update() {}
}
