import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:ray_plan/model/todo.dart';
import 'package:ray_plan/service/service_im.dart';

abstract class Global {
  static late Isar isar;
  static ServiceMessages serviceMessages = ServiceMessages();

  static init() async {
    final db_path = await getApplicationSupportDirectory();
    print('db save to $db_path');

    isar = await Isar.open(
      schemas: [TodoSchema], 
      directory: db_path.path);
  }
}