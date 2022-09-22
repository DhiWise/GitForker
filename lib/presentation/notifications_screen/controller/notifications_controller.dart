import '/core/app_export.dart';
import 'package:github/presentation/notifications_screen/models/notifications_model.dart';
import 'package:flutter/material.dart';
import 'package:github/data/models/notifications/get_notifications_resp.dart';
import 'package:github/data/apiClient/api_client.dart';
import '../models/notifications_item_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NotificationsController extends GetxController {
  Rx<NotificationsModel> notificationsModelObj = NotificationsModel().obs;

  List<GetNotificationsResp> getNotificationsResp = <GetNotificationsResp>[];

  @override
  void onReady() {
    super.onReady();
    this.callFetchNotifications(
      successCall: _onFetchNotificationsSuccess,
      errCall: _onFetchNotificationsError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchNotifications(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchNotifications(
        headers: {
          'Authorization': Get.find<PrefUtils>().getToken(),
        },
        onSuccess: (resp) {
          onFetchNotificationsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchNotificationsError(err);
          if (errCall != null) {
            errCall();
          }
        });
  }

  void onFetchNotificationsSuccess(var response) {
    getNotificationsResp = (response as List)
        .map((e) => GetNotificationsResp.fromJson(e))
        .toList();
  }

  void onFetchNotificationsError(var err) {
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

  void _onFetchNotificationsSuccess() {
    List<NotificationsItemModel> notificationsItemModelList = [];
    if (getNotificationsResp != null && getNotificationsResp.isNotEmpty) {
      for (var element in getNotificationsResp) {
        var notificationsItemModel = NotificationsItemModel();
        notificationsItemModel.k20220516CTxt.value =
        element.subject!.title != null ? element.subject!.title!.toString():"";
        notificationsItemModel.githubdocscTxt.value =
        element.repository!.fullName != null ?  element.repository!.fullName!.toString() : "";
        notificationsItemModelList.add(notificationsItemModel);
      }
    }
    notificationsModelObj.value.notificationsItemList.value =
        notificationsItemModelList;
  }

  void _onFetchNotificationsError() {
    Fluttertoast.showToast(
      msg: "Something went wrong.",
    );
  }
}
