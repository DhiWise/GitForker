import '../models/listrepositories_item_model.dart';
import '/core/app_export.dart';
import 'package:github/presentation/profile_screen/models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:github/data/models/user/get_user_resp.dart';
import 'package:github/data/apiClient/api_client.dart';
import 'dart:convert';
import 'package:markdown/markdown.dart' as mdToH;
import 'package:github/data/models/repo/readMe.dart';


class ProfileController extends GetxController {
  TextEditingController focusingController = TextEditingController();

  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

  GetUserResp getUserResp = GetUserResp();
  List<String> listOfMenu = ["Repositories","Starred","Organization"];
  List<String> listOfIcon = [ImageConstant.imgGroup7,ImageConstant.imgGroup11,ImageConstant.imgGroup9];
  readMe getReadMe = readMe();

  @override
  void onReady() {
    super.onReady();
    listOfMenu.forEach((element) {
      ListrepositoriesItemModel listrepositoriesItemModel = ListrepositoriesItemModel();
      listrepositoriesItemModel.name.value = element;
      profileModelObj.value.listrepositoriesItemList.add(listrepositoriesItemModel);
    });
    this.callFetchUser(
      successCall: _onFetchUserSuccess,
      errCall: _onFetchUserError,
    );
  }

  @override
  void onClose() {
    super.onClose();
    focusingController.dispose();
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

  void _onFetchUserSuccess() {
    profileModelObj.value.sindresorhusTxt.value = getUserResp.login !=null ? getUserResp.login!.toString():"";
    profileModelObj.value.sindreSorhusTxt.value = getUserResp.name !=null ? getUserResp.name!.toString() : "";
    profileModelObj.value.circleimageImg.value = getUserResp.avatarUrl !=null ?
        getUserResp.avatarUrl!.toString() : "";
    profileModelObj.value.sanFranciscoTxt.value = getUserResp.location !=null ?
        getUserResp.location!.toString():"";
    profileModelObj.value.follower.value =getUserResp.followers !=null ? getUserResp.followers!.toString() : "";
    profileModelObj.value.following.value = getUserResp.following !=null ? getUserResp.following!.toString() : "";
    profileModelObj.value.desc.value = getUserResp.bio !=null ? getUserResp.bio!.toString() : "";
    this.callReadmeOfRepo(errCall:_onFetchUserError ,successCall: _onFetchReadmeSuccess,repo: '${getUserResp.login.toString()}/${getUserResp.login.toString()}');
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
          // onFetchRepoSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchUserError(err);
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
      profileModelObj.value.readme.value = mdToH.markdownToHtml(utf8.decode(decoded),inlineSyntaxes: [mdToH.InlineHtmlSyntax()]);
    }catch(e,s){
      print("err, "+e.toString());
    }
  }

  void _onFetchUserError() {}
}
