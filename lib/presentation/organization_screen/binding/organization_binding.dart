import '../controller/organization_controller.dart';
import 'package:get/get.dart';

class OrganizationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrganizationController());
  }
}
