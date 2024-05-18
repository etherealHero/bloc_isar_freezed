import 'package:path_provider/path_provider.dart';
import 'package:isar/isar.dart';

import '../models/group/group.dart';
import '../models/task/task.dart';

const List<CollectionSchema<Object>> schemas = [TaskDTOSchema, GroupDTOSchema];
const String name = "todo_list";

class Repository<C> {
  late Future<Isar> db;

  Repository() {
    if (!schemas.map((e) => e.name).contains(C.toString())) {
      throw RepositoryError(
        "Unsupported collection type '$C'. Try add existing collection "
        "type on generic where creating instance of Repository: "
        "${schemas.map((e) => e.name).join(', ')}",
      );
    }

    db = _openDB();
  }

  Future<Id> create(C instance) async => _save(instance);
  Future<Id> update(C instance) async => _save(instance);

  Future<Id> createTask(TaskDTO task, int? groupId) async {
    var isar = await db;

    return isar.writeTxnSync(() {
      if (groupId != null) {
        var targetGroup = isar.collection<GroupDTO>().getSync(groupId);
        task.group.value = targetGroup;
      }

      var id = isar.collection<TaskDTO>().putSync(task);

      task.group.saveSync();

      return id;
    });
  }

  Future<bool> delete(int id) async {
    var isar = await db;
    return isar.writeTxnSync(() => isar.collection<C>().deleteSync(id));
  }

  Future<List<C>> getAll() async {
    var isar = await db;
    return isar.collection<C>().where().findAllSync();
  }

  Future<List<C?>> getSublist(List<int> ids) async {
    var isar = await db;
    return isar.collection<C>().getAllSync(ids);
  }

  Future<C?> get(id) async {
    var isar = await db;
    return isar.collection<C>().getSync(id);
  }

  Future<Id> _save(C instance) async {
    var isar = await db;
    return isar.writeTxnSync(() => isar.collection<C>().putSync(instance));
  }

  Future<void> cleanDb() async {
    final isar = await db;
    await isar.writeTxn(() => isar.clear());
  }

  Future<Isar> _openDB() async {
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        schemas,
        name: name,
        directory: (await getApplicationDocumentsDirectory()).path,
      );
    }

    return Future.value(Isar.getInstance());
  }
}

class RepositoryError extends Error {
  RepositoryError(this.message);

  final String message;

  @override
  String toString() {
    return 'RepositoryError: $message';
  }
}
