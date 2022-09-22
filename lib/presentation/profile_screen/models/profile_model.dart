import 'package:get/get.dart';
import 'listsindresorhous_item_model.dart';
import 'listrepositories_item_model.dart';

class ProfileModel {
  Rx<String> circleimageImg = Rx('');

  Rx<String> sindreSorhusTxt = Rx('');

  Rx<String> sindresorhusTxt = Rx('');

  Rx<String> sanFranciscoTxt = Rx('');

  Rx<String> desc = Rx('');

  Rx<String> follower = Rx('');

  Rx<String> following = Rx('');

  RxList<ListsindresorhousItemModel> listsindresorhousItemList =
      RxList.filled(2, ListsindresorhousItemModel());

  RxList<ListrepositoriesItemModel> listrepositoriesItemList =
      RxList.filled(3, ListrepositoriesItemModel());

  Rx<String> readme = Rx("");
}
