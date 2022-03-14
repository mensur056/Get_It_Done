import 'package:get/get.dart';
import 'package:get_it_done/app/data/provider/task/provider.dart';
import 'package:get_it_done/app/data/services/storage/repository.dart';
import 'package:get_it_done/app/modules/home/controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(
        taskRepository: TaskRepository(taskProvider: TaskProvider())));
  }
}
