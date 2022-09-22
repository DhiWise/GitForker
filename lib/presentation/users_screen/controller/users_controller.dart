import '/core/app_export.dart';
import 'package:github/presentation/users_screen/models/users_model.dart';
import 'package:flutter/material.dart';
import 'package:github/data/models/users/users.dart';
import 'package:github/data/apiClient/api_client.dart';
import '../models/users_item_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class UsersController extends GetxController {
  Rx<UsersModel> usersModelObj = UsersModel().obs;

  users getUsersResp = new users();

  @override
  void onReady() {
    super.onReady();
    this.callFetchUsers(
      successCall: _onFetchUsersSuccess,
      errCall: _onFetchUsersError,
      q: Get.arguments?[NavigationArgs.q],
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchUsers(
      {VoidCallback? successCall,
        VoidCallback? errCall,
        String? q}) async {
    return Get.find<ApiClient>().fetchUsers(
        headers: {
          'Authorization': Get.find<PrefUtils>().getToken(),
          'Accept': 'application/vnd.github.v3+json',
        },
        onSuccess: (resp) {
          onFetchUsersSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchUsersError(err);
          if (errCall != null) {
            errCall();
          }
        },
        q: q);
  }

  void onFetchUsersSuccess(var response) {
    getUsersResp = users.fromJson(response);
  }

  void onFetchUsersError(var err) {
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

  void _onFetchUsersSuccess() {
    List<UserItemModel> userItemModelList = [];
    if (getUsersResp.items?.length != 0) {
      for (var element in getUsersResp.items!) {
        var userModel = UserItemModel();
        userModel.dhiWiseTxt.value = element.login!.toString();
        userModel.imageImg.value = element.avatarUrl!.toString();
        userItemModelList.add(userModel);
      }
    }
    usersModelObj.value.userItemList.value =
        userItemModelList;
  }

  void _onFetchUsersError() {
    Fluttertoast.showToast(
      msg: "Something went wrong...",
    );
  }
}
