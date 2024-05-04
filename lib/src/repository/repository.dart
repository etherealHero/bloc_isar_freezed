import 'package:path_provider/path_provider.dart';
import 'package:isar/isar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '/src/models/task.dart';

class Repository {
  late Future<Isar> db;

  Repository() {
    db = _openDB();
  }

  Future<List<Task>> getTasks() async {
    var isar = await db;

    var tasks = isar.tasks.where().findAllSync();

    return tasks;
  }

  Future<Id> createTask(Task task) async => _saveTask(task);

  Future<Id> updateTask(Task task) async => _saveTask(task);

  Future<Id> _saveTask(Task task) async {
    var isar = await db;

    Id id = isar.writeTxnSync(() => isar.tasks.putSync(task));

    return id;
  }

  Future<bool> deleteTask(int id) async {
    var isar = await db;

    var isDeleted = isar.writeTxnSync(() => isar.tasks.deleteSync(id));

    return isDeleted;
  }

  Future<void> cleanDb() async {
    final isar = await db;
    await isar.writeTxn(() => isar.clear());
  }

  Future<Isar> _openDB() async {
    final dir = await getApplicationDocumentsDirectory();

    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [TaskSchema],
        directory: dir.path,
        inspector: true,
      );
    }

    return Future.value(Isar.getInstance());
  }

  Future<void> performMigrationIfNeeded(SharedPreferences prefs) async {
    const int lastVersion = 2;
    final currentVersion = prefs.getInt('version') ?? lastVersion;

    switch (currentVersion) {
      case 1:
        await _migrateV1ToV2();
        break;
      case 2:
        return;
      default:
        throw Exception('Unknown version: $currentVersion');
    }

    await prefs.setInt('version', lastVersion);
  }

  Future<void> _migrateV1ToV2() async {
    var isar = await db;

    var tasks = isar.tasks.where().findAllSync();

    isar.writeTxnSync(() {
      for (var task in tasks) {
        isar.tasks.putSync(task);
      }
    });
  }
}
