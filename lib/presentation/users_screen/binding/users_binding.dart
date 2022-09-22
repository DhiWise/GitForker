import '../controller/users_controller.dart';
import 'package:get/get.dart';

class UsersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UsersController());
  }
}
