import '../repositories_screen/widgets/repositories_item_widget.dart';
import 'controller/repositories_controller.dart';
import 'models/repositories_item_model.dart';
import 'package:flutter/material.dart';
import 'package:github/core/app_export.dart';

class RepositoriesScreen extends GetWidget<RepositoriesController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        decoration: BoxDecoration(color: ColorConstant.gray50),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray50,
                                      boxShadow: [
                                        BoxShadow(
                                            color: ColorConstant.gray70021,
                                            spreadRadius:
                                            getHorizontalSize(2.00),
                                            blurRadius: getHorizontalSize(2.00),
                                            offset: Offset(0, 0))
                                      ]),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                width: size.width,
                                                margin: EdgeInsets.only(
                                                    top: getVerticalSize(20.00),
                                                    bottom:
                                                    getVerticalSize(20.00)),
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            16.00),
                                                        right:
                                                        getHorizontalSize(
                                                            228.00)),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .start,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        mainAxisSize:
                                                        MainAxisSize.min,
                                                        children: [
                                                          Padding(
                                                              padding: EdgeInsets.only(
                                                                  top: getVerticalSize(
                                                                      14.00),
                                                                  bottom:
                                                                  getVerticalSize(
                                                                      14.00)),
                                                              child: ClipRRect(
                                                                  borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          45.00)),
                                                                  child: Container(
                                                                    // height: getSize(
                                                                    //     24.00),
                                                                    // width: getSize(
                                                                    //     24.00),
                                                                      child: GestureDetector(onTap: (()=>{Get.back()}),child:Icon(Icons.arrow_back_outlined))
                                                                    // SvgPicture.asset(
                                                                    //     ImageConstant
                                                                    //         .imgArrowleft244,
                                                                    //     fit: BoxFit
                                                                    //         .fill)
                                                                  ))),
                                                          Padding(
                                                              padding: EdgeInsets.only(
                                                                  left: getHorizontalSize(
                                                                      0.00)),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                                  mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                                  children: [
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            right: getHorizontalSize(
                                                                                10.00)),
                                                                        child: Obx(()=> controller.isUsernameDisplay.value == true ? Text(
                                                                            Get.find<PrefUtils>().getUsername(),
                                                                            overflow:
                                                                            TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.textstyleintermedium161.copyWith(fontSize: getFontSize(16))):Container())),
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            top: getVerticalSize(
                                                                                4.00)),
                                                                        child: Text(
                                                                            "lbl_repositories"
                                                                                .tr,
                                                                            overflow:
                                                                            TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.textstyleinterbold24.copyWith(fontSize: getFontSize(26))))
                                                                  ]))
                                                        ]))))
                                      ])),
                              Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.only(
                                      top: getVerticalSize(24.00),
                                      bottom: getVerticalSize(29.00)),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.whiteA700),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                color: ColorConstant.whiteA700),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: getHorizontalSize(
                                                              10.00),
                                                          right:
                                                          getHorizontalSize(
                                                              10.00),
                                                          bottom: getVerticalSize(
                                                              24.00)),
                                                      child: Obx(() =>
                                                          ListView.separated(
                                                              physics:
                                                              BouncingScrollPhysics(),
                                                              shrinkWrap: true,
                                                              separatorBuilder:
                                                                  (context,
                                                                  index) {
                                                                return Container(
                                                                    height:
                                                                    getVerticalSize(
                                                                        1.00),
                                                                    width: size
                                                                        .width,
                                                                    decoration:
                                                                    BoxDecoration(
                                                                        color:
                                                                        ColorConstant.gray300));
                                                              },
                                                              itemCount: controller
                                                                  .repositoriesModelObj
                                                                  .value
                                                                  .repositoriesItemList
                                                                  .length,
                                                              itemBuilder:
                                                                  (context,
                                                                  index) {
                                                                RepositoriesItemModel
                                                                model =
                                                                controller
                                                                    .repositoriesModelObj
                                                                    .value
                                                                    .repositoriesItemList[index];
                                                                return RepositoriesItemWidget(
                                                                    model,
                                                                    onTapColumnmongoosetypesc:()=>{onTapColumnmongoosetypesc(index)});
                                                              })))
                                                ])),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: size.width,
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray300))
                                      ]))
                            ]))))));
  }

  onTapColumnmongoosetypesc(int name) {
    if(Get.arguments?[NavigationArgs.searchKeyword] == null){
      Get.toNamed(AppRoutes.pinnedScreen, arguments: {
        NavigationArgs.repo: controller.getReposResp[name].fullName,
      });
    }else{
      Get.toNamed(AppRoutes.pinnedScreen, arguments: {
        NavigationArgs.repo: controller.getSearchRepo.items?[name].fullName,
      });
    }

  }
}
