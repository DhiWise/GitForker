import 'package:get/get.dart';
import 'issue_item_model.dart';

class IssueModel {
  RxList<IssueItemModel> issueItemList =
      RxList.filled(0, IssueItemModel());
}
