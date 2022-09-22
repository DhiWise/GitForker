import '/core/app_export.dart';
import 'package:github/presentation/starred_screen/models/starred_model.dart';
import 'package:flutter/material.dart';
import 'package:github/data/models/starred/get_starred_resp.dart';
import 'package:github/data/apiClient/api_client.dart';
import '../models/listicon_item_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class StarredController extends GetxController {
  Rx<StarredModel> starredModelObj = StarredModel().obs;

  List<GetStarredResp> getStarredResp = <GetStarredResp>[];

  @override
  void onReady() {
    super.onReady();
    this.callFetchStarred(
      successCall: _onFetchStarredSuccess,
      errCall: _onFetchStarredError,
      username: Get.find<PrefUtils>().getUsername(),
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchStarred(
      {VoidCallback? successCall,
        VoidCallback? errCall,
        String? username}) async {
    return Get.find<ApiClient>().fetchStarred(
        headers: {
          'Accept': 'application/vnd.github.v3+json',
          'Authorization': Get.find<PrefUtils>().getToken(),
        },
        onSuccess: (resp) {
          onFetchStarredSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchStarredError(err);
          if (errCall != null) {
            errCall();
          }
        },
        username: username);
  }

  void onFetchStarredSuccess(var response) {
    getStarredResp =
        (response as List).map((e) => GetStarredResp.fromJson(e)).toList();
  }

  void onFetchStarredError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

  void _onFetchStarredSuccess() {
    List<ListiconItemModel> listiconItemModelList = [];
    if (getStarredResp != null && getStarredResp.isNotEmpty) {
      for (var element in getStarredResp) {
        var listiconItemModel = ListiconItemModel();
        listiconItemModel.robWTxt.value = element.name != null ? element.name.toString() : "";
        listiconItemModel.circleimageImg.value =
        element.owner!.avatarUrl != null ? element.owner!.avatarUrl.toString() : "";
        listiconItemModel.cORSAnywhereiTxt.value =
        element.description != null ? element.description.toString() : "";
        listiconItemModel.k68kTxt.value = element.stargazersCount != null ? element.stargazersCount.toString() : "";
        listiconItemModel.javaScriptTxt.value = element.language != null ? element.language.toString() : "";
        listiconItemModelList.add(listiconItemModel);
      }
    }
    starredModelObj.value.listiconItemList.value = listiconItemModelList;
  }

  void _onFetchStarredError() {
    Fluttertoast.showToast(
      msg: "Something went wrong...",
    );
  }
}
