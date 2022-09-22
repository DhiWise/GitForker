import '../controller/repositories_controller.dart';
import 'package:get/get.dart';

class RepositoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RepositoriesController());
  }
}
