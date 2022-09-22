import '/core/app_export.dart';
import 'package:github/presentation/home_screen/models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:github/data/models/user/get_user_resp.dart';
import 'package:github/data/apiClient/api_client.dart';
class HomeController extends GetxController {
  Rx<HomeModel> homeModelObj = HomeModel().obs;
  GetUserResp getUserResp = GetUserResp();


  @override
  void onReady() {
    super.onReady();
    this.callFetchUser(
      successCall: _onFetchUserSuccess,
      errCall: _onFetchUserError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchUser({VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchUser(
        headers: {
          'Authorization': Get.find<PrefUtils>().getToken(),
          'Content-type': 'application/json',
        },
        onSuccess: (resp) {
          onFetchUserSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          if(err.toString() == "Unauthorized"){
            Get.find<PrefUtils>().setToken("");
          }
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
    Get.toNamed(AppRoutes.textScreen);

  }

  void _onFetchUserSuccess() {

  }

  void _onFetchUserError() {}
}
