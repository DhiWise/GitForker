import 'package:github/data/models/repo/readMe.dart';
import '/core/app_export.dart';
import 'package:github/presentation/pinned_screen/models/pinned_model.dart';
import 'package:flutter/material.dart';
import 'package:github/data/models/repo/get_repo_resp.dart';
import 'package:github/data/apiClient/api_client.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:convert';
import 'package:markdown/markdown.dart' as mdToH;

class PinnedController extends GetxController {

  Rx<PinnedModel> pinnedModelObj = PinnedModel().obs;

  GetRepoResp getRepoResp = GetRepoResp();

  readMe getReadMe = readMe();

  bool isForkAvailable = false;

  @override
  void onReady() {
    super.onReady();
    this.callFetchRepo(
      successCall: _onFetchRepoSuccess,
      errCall: _onFetchRepoError,
      repo: Get.arguments[NavigationArgs.repo],
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchRepo(
      {VoidCallback? successCall, VoidCallback? errCall, String? repo}) async {
    return Get.find<ApiClient>().fetchRepo(
        headers: {
          'Authorization': Get.find<PrefUtils>().getToken(),
          'Accept': 'application/vnd.github.v3+json',
        },
        onSuccess: (resp) {
          onFetchRepoSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchRepoError(err);
          if (errCall != null) {
            errCall();
          }
        },
        repo: repo);
  }

  void callReadmeOfRepo(
      {VoidCallback? successCall, VoidCallback? errCall, String? repo}) async {
    return Get.find<ApiClient>().fetchReadMeOfRepo(
        headers: {
          'Authorization': Get.find<PrefUtils>().getToken(),
          'Accept': 'application/vnd.github.v3+json',
        },
        onSuccess: (resp) {
          onFetchReadmeSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchRepoError(err);
          if (errCall != null) {
            errCall();
          }
        },
        repo: repo);
  }

  void onFetchReadmeSuccess(var response){
    getReadMe = readMe.fromJson(response);
  }

  void _onFetchReadmeSuccess(){
    //decode here
    const Base64Codec base64 = Base64Codec();
    try{
      getReadMe.content = getReadMe.content!.replaceAll('\n', "");
      var decoded = base64.decode(getReadMe.content!);
      pinnedModelObj.value.readme.value = mdToH.markdownToHtml(utf8.decode(decoded),inlineSyntaxes: [mdToH.InlineHtmlSyntax()]);
    }catch(e){
      print("err, "+e.toString());
    }
  }

  void onFetchRepoSuccess(var response) {
    getRepoResp = GetRepoResp.fromJson(response);
  }

  void onFetchRepoError(var err) {
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

  void _onFetchRepoSuccess() {
    pinnedModelObj.value.rpcplaygroundTxt.value = getRepoResp.name!.toString();
    pinnedModelObj.value.cookytechlearnTxt.value =
        getRepoResp.owner!.login!.toString();
    pinnedModelObj.value.circleimageImg.value =
        getRepoResp.owner!.avatarUrl!.toString();
    pinnedModelObj.value.descriptionTxt.value =
    getRepoResp.description != null ? getRepoResp.description.toString():"";
    pinnedModelObj.value.star.value =
        getRepoResp.stargazersCount!.toString();
    pinnedModelObj.value.forks.value =
        getRepoResp.forksCount!.toString();
    pinnedModelObj.value.fullName.value = getRepoResp.fullName.toString();
    pinnedModelObj.value.isForkAvailable.value = getRepoResp.owner!.login!.toString() != Get.find<PrefUtils>().getUsername();

    this.callReadmeOfRepo(errCall: null,successCall: _onFetchReadmeSuccess,repo: getRepoResp.fullName.toString());
  }

  void _onForkRepoSuccess() {
    Fluttertoast.showToast(
      msg: "Forks Successfully....",
    );
  }

  void _onFetchRepoError() {
    Fluttertoast.showToast(
      msg: "Something went wrong...",
    );
  }

  void _onCreateForkRepoError() {
    Fluttertoast.showToast(
      msg: "Froks faild!! Something went wrong...",
    );
  }

  void createFork(String repo){
    //  API Call
    this.callCreateFork(
      successCall: _onForkRepoSuccess,
      errCall: _onCreateForkRepoError,
      repo: repo,
    );
  }

  void callCreateFork(
      {VoidCallback? successCall, VoidCallback? errCall, String? repo}) async {
    return Get.find<ApiClient>().createFork(
        headers: {
          'Authorization': Get.find<PrefUtils>().getToken(),
          'Accept': 'application/vnd.github.v3+json',
        },
        onSuccess: (resp) {
          onFetchRepoSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchRepoError(err);
          if (errCall != null) {
            errCall();
          }
        },
        repo: repo);
  }

}
