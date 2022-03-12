import 'package:get_it_done/app/data/models/task.dart';
import 'package:get_it_done/app/data/provider/task/provider.dart';

class TaskRepository {
  TaskProvider taskProvider;

  TaskRepository({required this.taskProvider});

  List<Task> readTasks() => taskProvider.readTasks();

  void writeTask(List<Task> tasks) => taskProvider.writeTasks(tasks);
}
