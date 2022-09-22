import '../controller/starred_controller.dart';
import 'package:get/get.dart';

class StarredBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StarredController());
  }
}
