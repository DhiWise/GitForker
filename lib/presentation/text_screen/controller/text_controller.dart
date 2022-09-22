import '/core/app_export.dart';
import 'package:github/presentation/text_screen/models/text_model.dart';
import 'package:flutter/material.dart';
import 'package:github/data/models/user/get_user_resp.dart';
import 'package:github/data/apiClient/api_client.dart';

class TextController extends GetxController {
  TextEditingController addtextController = TextEditingController();

  Rx<TextModel> textModelObj = TextModel().obs;

  GetUserResp getUserResp = GetUserResp();

  @override
  void onReady() {
    super.onReady();
    var token = Get.find<PrefUtils>().getToken();
    if(token != ""){
      Get.toNamed(AppRoutes.homeScreen);
    }
  }

  @override
  void onClose() {
    super.onClose();
    addtextController.dispose();
  }

  void callFetchUser({VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchUser(
        headers: {
          'Content-type': 'application/json',
          'Authorization': Get.find<PrefUtils>().getToken(),
        },
        onSuccess: (resp) {
          onFetchUserSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchUserError(err);
          if (errCall != null) {
            errCall();
          }
        });
  }

  void onFetchUserSuccess(var response) {
    getUserResp = GetUserResp.fromJson(response);
  }

  void onFetchUserError(var err) {
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
}
