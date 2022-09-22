import 'package:get/get.dart';
import 'pinned_item_model.dart';

class PinnedModel {
  Rx<String> circleimageImg = Rx('');

  Rx<String> cookytechlearnTxt = Rx('');

  Rx<String> rpcplaygroundTxt = Rx('');

  Rx<String> descriptionTxt = Rx('');

  Rx<String> star = Rx("");

  Rx<String> forks = Rx("");

  Rx<bool> isForkAvailable = false.obs;

  Rx<String> fullName = Rx("");

  Rx<String> readme = Rx("");

  RxList<PinnedItemModel> pinnedItemList = RxList.filled(1, PinnedItemModel());
}
