import 'package:get/get.dart';
import 'pull_requests_item_model.dart';

class PullRequestsModel {
  RxList<PullRequestsItemModel> pullRequestsItemList =
      RxList.filled(0, PullRequestsItemModel());
}
