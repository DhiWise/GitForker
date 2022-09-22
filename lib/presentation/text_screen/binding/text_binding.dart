import '../controller/text_controller.dart';
import 'package:get/get.dart';

class TextBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TextController());
  }
}
