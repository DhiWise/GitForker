import '../controller/pull_requests_controller.dart';
import 'package:get/get.dart';

class PullRequestsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PullRequestsController());
  }
}
