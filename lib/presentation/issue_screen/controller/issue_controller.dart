import 'package:github/presentation/issue_screen/models/issue_model.dart';
import '/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:github/data/models/issues/get_issues_resp.dart';
import 'package:github/data/apiClient/api_client.dart';
import '../models/issue_item_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class IssueController extends GetxController {
  Rx<IssueModel> issueModelObj = IssueModel().obs;

  GetIssuesResp getIssuesResp = GetIssuesResp();

  @override
  void onReady() {
    super.onReady();
    var username = Get.find<PrefUtils>().getUsername();
    String queryParams = "type:issue+assignee:$username";
    this.callFetchIssues(
      successCall: _onFetchIssuesSuccess,
      errCall: _onFetchIssuesError,
      queryParams: queryParams,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchIssues(
      {VoidCallback? successCall,
      VoidCallback? errCall,
        String queryParams = ""}) async {
    return Get.find<ApiClient>().fetchIssuesPR(
        headers: {
          'Authorization': Get.find<PrefUtils>().getToken(),
        },
        onSuccess: (resp) {
          onFetchIssuesSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchIssuesError(err);
          if (errCall != null) {
            errCall();
          }
        },
        queryParams: queryParams);
  }

  void onFetchIssuesSuccess(var response) {
    getIssuesResp = GetIssuesResp.fromJson(response);
  }

  void onFetchIssuesError(var err) {
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

  void _onFetchIssuesSuccess() {
    List<IssueItemModel> issueItemModelList = [];
    if (getIssuesResp!.items! != null && getIssuesResp!.items!.isNotEmpty) {
      for (var element in getIssuesResp!.items!) {
        var issueItemModel = IssueItemModel();
        issueItemModel.featureAddedTxt.value = element.title !=null ? element.title!.toString() : "";
        if(element.repositoryUrl !=null){
          var urlOfRepo  = element.repositoryUrl!.toString().split("/");
          issueItemModel.sandresorhusTxt.value = urlOfRepo[urlOfRepo.length-2]+"/"+urlOfRepo[urlOfRepo.length-1];
        }else{
          issueItemModel.sandresorhusTxt.value = "";
        }
        issueItemModel.assignBy.value = element.user!.login != null ? element.user!.login.toString() : "";
        issueItemModel.profilePic.value = element.user!.avatarUrl != null ? element.user!.avatarUrl.toString() : "";
        issueItemModelList.add(issueItemModel);
      }
    }
    issueModelObj.value.issueItemList.value =
        issueItemModelList;
  }

  void _onFetchIssuesError() {
    Fluttertoast.showToast(
      msg: "Something went wrong.",
    );
  }
}
