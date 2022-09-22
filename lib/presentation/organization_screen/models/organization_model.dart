import 'package:get/get.dart';
import 'organization_item_model.dart';

class OrganizationModel {
  RxList<OrganizationItemModel> organizationItemList =
      RxList.filled(0, OrganizationItemModel());
}
