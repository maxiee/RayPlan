import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

abstract class Global {
  static late Isar isar;

  static init() async {
    final db_path = await getApplicationSupportDirectory();
    print('db save to $db_path');

    isar = await Isar.open(schemas: [], directory: db_path.path);
  }
}