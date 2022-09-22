import 'package:get/get.dart';
import 'repositories_item_model.dart';

class RepositoriesModel {
  RxList<RepositoriesItemModel> repositoriesItemList =
      RxList.filled(0, RepositoriesItemModel());
}
