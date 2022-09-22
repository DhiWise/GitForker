import 'package:flutter/material.dart';

import '/core/app_export.dart';
import 'package:github/presentation/search_screen/models/search_model.dart';

class SearchController extends GetxController {
  Rx<SearchModel> searchModelObj = SearchModel().obs;
  Rx<TextEditingController> searchTxt = TextEditingController().obs;
  RxString searchInput = "".obs;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}
