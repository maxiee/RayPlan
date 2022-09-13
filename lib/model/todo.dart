import 'package:isar/isar.dart';

part 'todo.g.dart';

@Collection()
class Todo {
  int id = Isar.autoIncrement;

  late String title;
  late bool finished;
  late String description;
  late DateTime created;
  late DateTime updated;
}