import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_it_done/app/data/services/storage/repository.dart';

class HomeController extends GetxController {
  TaskRepository taskRepository;

  HomeController({required this.taskRepository});
}
