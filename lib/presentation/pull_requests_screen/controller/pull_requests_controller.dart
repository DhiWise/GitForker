import '/core/app_export.dart';
import 'package:github/presentation/pull_requests_screen/models/pull_requests_model.dart';
import 'package:flutter/material.dart';
import 'package:github/data/models/issues/get_issues_resp.dart';
import 'package:github/data/apiClient/api_client.dart';
import '../models/pull_requests_item_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PullRequestsController extends GetxController {
  Rx<PullRequestsModel> pullRequestsModelObj = PullRequestsModel().obs;

  GetIssuesResp getIssuesResp = GetIssuesResp();

  @override
  void onReady() {
    super.onReady();
    var username = Get.find<PrefUtils>().getUsername();
    String queryParams = "type:pr+assignee:$username";
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
    List<PullRequestsItemModel> pullRequestsItemModelList = [];
    if (getIssuesResp!.items! != null && getIssuesResp!.items!.isNotEmpty) {
      for (var element in getIssuesResp!.items!) {
        var pullRequestsItemModel = PullRequestsItemModel();
        pullRequestsItemModel.featureAddedTxt.value = element.title !=null ? element.title!.toString() : "";
        if(element.repositoryUrl !=null){
          var urlOfRepo  = element.repositoryUrl!.toString().split("/");
          pullRequestsItemModel.sandresorhusTxt.value = urlOfRepo[urlOfRepo.length-2]+"/"+urlOfRepo[urlOfRepo.length-1];
        }else{
          pullRequestsItemModel.sandresorhusTxt.value = "";
        }
        pullRequestsItemModelList.add(pullRequestsItemModel);
      }
    }
    pullRequestsModelObj.value.pullRequestsItemList.value =
        pullRequestsItemModelList;
  }

  void _onFetchIssuesError() {
    Fluttertoast.showToast(
      msg: "Something went wrong.",
    );
  }
}
