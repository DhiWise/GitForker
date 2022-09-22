import '../controller/pinned_controller.dart';
import 'package:get/get.dart';

class PinnedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PinnedController());
  }
}
