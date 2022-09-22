import '/core/app_export.dart';
import 'package:github/presentation/organization_screen/models/organization_model.dart';
import 'package:flutter/material.dart';
import 'package:github/data/models/orgs/get_orgs_resp.dart';
import 'package:github/data/models/orgs/searchedOrg.dart';
import 'package:github/data/apiClient/api_client.dart';
import '../models/organization_item_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OrganizationController extends GetxController {
  Rx<OrganizationModel> organizationModelObj = OrganizationModel().obs;

  List<GetOrgsResp> getOrgsResp = <GetOrgsResp>[];
  SearchedOrg getSearchedResp = new SearchedOrg();

  @override
  void onReady() {
    super.onReady();
    String searchTxt="";
    if(Get.arguments?[NavigationArgs.org] != null){
      searchTxt = Get.arguments?[NavigationArgs.org];
    }
    if(searchTxt==""){
      this.callFetchOrgs(
        successCall: _onFetchOrgsSuccess,
        errCall: _onFetchOrgsError,
        username: Get.find<PrefUtils>().getUsername(),
      );
    }else{
      this.callFetchSearchedOrgs(
        successCall: _onFetchSearchedOrgsSuccess,
        errCall: _onFetchOrgsError,
        q:searchTxt,
      );
    }

  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchOrgs(
      {VoidCallback? successCall,
        VoidCallback? errCall,
        String? username}) async {
    return Get.find<ApiClient>().fetchOrgs(
        headers: {
          'Authorization': Get.find<PrefUtils>().getToken(),
          'Accept': 'application/vnd.github.v3+json',
        },
        onSuccess: (resp) {
          onFetchOrgsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchOrgsError(err);
          if (errCall != null) {
            errCall();
          }
        },
        username: username);
  }

  void callFetchSearchedOrgs(
      {VoidCallback? successCall,
        VoidCallback? errCall,
        String? q}) async {
    return Get.find<ApiClient>().fetchSearchOrgs(
        headers: {
          'Authorization': Get.find<PrefUtils>().getToken(),
          'Accept': 'application/vnd.github.v3+json',
        },
        onSuccess: (resp) {
          onFetchSearchedOrgsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchOrgsError(err);
          if (errCall != null) {
            errCall();
          }
        },
        q: q);
  }

  void onFetchOrgsSuccess(var response) {
    getOrgsResp =
        (response as List).map((e) => GetOrgsResp.fromJson(e)).toList();
  }

  void onFetchSearchedOrgsSuccess(var response) {
    getSearchedResp = SearchedOrg.fromJson(response);
  }

  void onFetchOrgsError(var err) {
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

  void _onFetchOrgsSuccess() {
    List<OrganizationItemModel> organizationItemModelList = [];
    if (getOrgsResp != null && getOrgsResp.isNotEmpty) {
      for (var element in getOrgsResp) {
        var organizationItemModel = OrganizationItemModel();
        organizationItemModel.dhiWiseTxt.value = element.login!.toString();
        organizationItemModel.theultimateopTxt.value =
            element.description!.toString();
        organizationItemModel.imageImg.value = element.avatarUrl!.toString();
        organizationItemModelList.add(organizationItemModel);
      }
    }
    organizationModelObj.value.organizationItemList.value =
        organizationItemModelList;
  }

  void _onFetchSearchedOrgsSuccess() {
    List<OrganizationItemModel> organizationItemModelList = [];
    if (getSearchedResp?.items?.length != 0) {
      for (var element in getSearchedResp.items!) {
        var organizationItemModel = OrganizationItemModel();
        organizationItemModel.dhiWiseTxt.value = element.login!.toString();
        organizationItemModel.theultimateopTxt.value ="";
        organizationItemModel.imageImg.value = element.avatarUrl!.toString();
        organizationItemModelList.add(organizationItemModel);
      }
    }
    organizationModelObj.value.organizationItemList.value =
        organizationItemModelList;
  }

  void _onFetchOrgsError() {
    Fluttertoast.showToast(
      msg: "Something went wrong...",
    );
  }
}
