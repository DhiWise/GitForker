import '/core/app_export.dart';
import 'package:github/presentation/repositories_screen/models/repositories_model.dart';
import 'package:flutter/material.dart';
import 'package:github/data/models/repos/get_repos_resp.dart';
import 'package:github/data/models/repos/searchedRepo.dart';
import 'package:github/data/apiClient/api_client.dart';
import '../models/repositories_item_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RepositoriesController extends GetxController {
  Rx<RepositoriesModel> repositoriesModelObj = RepositoriesModel().obs;

  List<GetReposResp> getReposResp = <GetReposResp>[];
  searchedRepo getSearchRepo = searchedRepo();

  Rx<bool> isUsernameDisplay = false.obs;

  @override
  void onReady() {
    super.onReady();
    String searchTxt="";
    if(Get.arguments?[NavigationArgs.searchKeyword] != null){
      searchTxt = Get.arguments?[NavigationArgs.searchKeyword];
    }
    if(searchTxt != ""){
      this.callFetchSearchRepos(
          successCall: _onFetchSearchReposSuccess,
          errCall: _onFetchReposError,
          searchTxt:searchTxt
      );
    }else{
      this.callFetchRepos(
        successCall: _onFetchReposSuccess,
        errCall: _onFetchReposError,
        username: Get.find<PrefUtils>().getUsername(),
      );
    }

  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchRepos(
      {VoidCallback? successCall,
        VoidCallback? errCall,
        String? username}) async {
    return Get.find<ApiClient>().fetchRepos(
        headers: {
          'Authorization': Get.find<PrefUtils>().getToken(),
          'Accept': 'application/vnd.github.v3+json',
        },
        onSuccess: (resp) {
          onFetchReposSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchReposError(err);
          if (errCall != null) {
            errCall();
          }
        },
        username: username);
  }

  void callFetchSearchRepos(
      {VoidCallback? successCall,
        VoidCallback? errCall,
        String? searchTxt}) async {
    return Get.find<ApiClient>().fetchSearchRepos(
        headers: {
          'Authorization': Get.find<PrefUtils>().getToken(),
          'Accept': 'application/vnd.github.v3+json',
        },
        onSuccess: (resp) {
          onFetchSearchReposSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchReposError(err);
          if (errCall != null) {
            errCall();
          }
        },searchTxt: searchTxt);
  }

  void onFetchReposSuccess(var response) {
    getReposResp =
        (response as List).map((e) => GetReposResp.fromJson(e)).toList();
  }

  void onFetchSearchReposSuccess(var response) {
    try {
      getSearchRepo = searchedRepo.fromJson(response);
    } catch (e,s) {
      print('err -> $e');
    }
  }

  void onFetchReposError(var err) {
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

  void _onFetchReposSuccess() {
    List<RepositoriesItemModel> repositoriesItemModelList = [];
    if (getReposResp != null && getReposResp.isNotEmpty) {
      for (var element in getReposResp) {
        var repositoriesItemModel = RepositoriesItemModel();
        repositoriesItemModel.mongooseTypeScTxt.value =
            element.name!.toString();
        repositoriesItemModel.forkedfromtomTxt.value =
        element.description !=null ? element.description.toString():"";
        repositoriesItemModel.k68kTxt.value =
        element.stargazersCount != null ? element.stargazersCount.toString():"";
        repositoriesItemModel.javaScriptTxt.value =
        element.language !=null ? element.language.toString():"";
        repositoriesItemModelList.add(repositoriesItemModel);
      }
      isUsernameDisplay.value = true;
    }
    repositoriesModelObj.value.repositoriesItemList.value =
        repositoriesItemModelList;
  }

  void _onFetchSearchReposSuccess() {
    List<RepositoriesItemModel> repositoriesItemModelList = [];
    if (getSearchRepo != null && getSearchRepo.items?.length! != 0) {
      for (var element in getSearchRepo.items!) {
        var repositoriesItemModel = RepositoriesItemModel();
        repositoriesItemModel.mongooseTypeScTxt.value =
            element.name!.toString();
        repositoriesItemModel.forkedfromtomTxt.value =
        element.description !=null ? element.description.toString():"";
        repositoriesItemModel.k68kTxt.value =
        element.stargazersCount != null ? element.stargazersCount.toString():"";
        repositoriesItemModel.javaScriptTxt.value =
        element.language !=null ? element.language.toString():"";
        repositoriesItemModelList.add(repositoriesItemModel);
      }
    }
    repositoriesModelObj.value.repositoriesItemList.value =
        repositoriesItemModelList;
  }

  void _onFetchReposError() {
    Fluttertoast.showToast(
      msg: "Something went wrong...",
    );
  }
}
