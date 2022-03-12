import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_it_done/app/core/utils/keys.dart';
import 'package:get_it_done/app/data/services/storage/services.dart';

import '../../models/task.dart';

class TaskProvider {
 final  _storage = Get.find<StorageService>();

  // {'tasks':[{'color':'#ff123456','title':'Work','icon':0xe123}]}

  List<Task> readTasks() {
    var tasks = <Task>[];
    jsonDecode(_storage.read(taskKey).toString())
        .forEach((e) => tasks.add(Task.fromJson(e)));
    return tasks;
  }

  void writeTasks(List<Task> tasks) {
    _storage.write(taskKey, jsonEncode(tasks));
  }
}
