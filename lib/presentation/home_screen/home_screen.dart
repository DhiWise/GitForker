import 'controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:github/core/app_export.dart';
import 'package:github/widgets/custom_icon_button.dart';

class HomeScreen extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Column(children: [
              Expanded(
                  child: Container(
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                    Container(
                        width: size.width,
                        margin: getMargin(top: 20),
                        child: Padding(
                            padding: getPadding(left: 16, right: 16),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text("lbl_home".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtInterBold24.copyWith()),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: getVerticalSize(2.50),
                                          bottom:
                                          getVerticalSize(2.50)),
                                      child: Container(
                                          height:
                                          getVerticalSize(24.00),
                                          width:
                                          getHorizontalSize(72.00),
                                          child: GestureDetector(onTap:() => {
                                            moveToSearchScreen()
                                          },child: Icon(Icons.search) ,)
                                      ))
                                ]))),
                    Expanded(
                        child: SingleChildScrollView(
                            padding: getPadding(top: 24),
                            child: Container(
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                  Padding(
                                      padding: getPadding(left: 16, right: 16,bottom: 16,top: 16),
                                      child: Text("lbl_my_work".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterSemiBold18
                                              .copyWith())),
                                  GestureDetector(onTap: (){
                                    onTapIssue();
                                  },
                                    child: Padding(
                                      padding: getPadding(
                                          left: 16,
                                          top: 23,
                                          right: 16),
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
                                            CustomIconButton(
                                                height: 50,
                                                width: 50,
                                                variant: IconButtonVariant
                                                    .FillGreen500,
                                                child: CommonImageView(
                                                    imagePath: ImageConstant
                                                        .imgGroup1)),
                                            Padding(
                                                padding:
                                                getPadding(
                                                    left:
                                                    16,
                                                    top: 8,
                                                    bottom:
                                                    7),
                                                child: Text(
                                                    "lbl_issues"
                                                        .tr,
                                                    overflow:
                                                    TextOverflow
                                                        .ellipsis,
                                                    textAlign:
                                                    TextAlign
                                                        .left,
                                                    style: AppStyle
                                                        .txtInterRegular18
                                                        .copyWith()))
                                          ])),
                                      ),
                                  GestureDetector( onTap: () {
                                    onTapPullReq();
                                  }, child:  Padding(
                                      padding: getPadding(
                                          left: 16,
                                          top: 24,
                                          right: 16),
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
                                            CustomIconButton(
                                                height: 50,
                                                width: 50,
                                                variant: IconButtonVariant
                                                    .FillBlueA400,
                                                child: CommonImageView(
                                                    imagePath: ImageConstant
                                                        .imgGroup3)),
                                            Padding(
                                                padding:
                                                getPadding(
                                                    left:
                                                    16,
                                                    top: 10,
                                                    bottom:
                                                    5),
                                                child: Text(
                                                    "lbl_pull_requests"
                                                        .tr,
                                                    overflow:
                                                    TextOverflow
                                                        .ellipsis,
                                                    textAlign:
                                                    TextAlign
                                                        .left,
                                                    style: AppStyle
                                                        .txtInterRegular18
                                                        .copyWith()))
                                          ])),
                                      ),
                                  GestureDetector(
                                      onTap: () {
                                        onTapRowrepositories();
                                      },
                                      child: Padding(
                                          padding: getPadding(
                                              left: 16, top: 24, right: 16),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                CustomIconButton(
                                                    height: 50,
                                                    width: 50,
                                                    variant: IconButtonVariant
                                                        .FillBluegray800,
                                                    child: CommonImageView(
                                                        imagePath: ImageConstant
                                                            .imgGroup7)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 16,
                                                        top: 6,
                                                        bottom: 7),
                                                    child: Text(
                                                        "lbl_repositories".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular18
                                                            .copyWith()))
                                              ]))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: GestureDetector(
                                          onTap: () {
                                            onTapRoworganizations();
                                          },
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 16, top: 24, right: 16),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    CustomIconButton(
                                                        height: 50,
                                                        width: 50 ,
                                                        variant: IconButtonVariant
                                                            .FillDeeporange400,
                                                        child: CommonImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgGroup9)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 16,
                                                            top: 6,
                                                            bottom: 6),
                                                        child: Text(
                                                            "lbl_organizations"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular18
                                                                .copyWith()))
                                                  ])))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapRowstarred();
                                      },
                                      child: Padding(
                                          padding: getPadding(
                                              left: 16, top: 24, right: 16),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                CustomIconButton(
                                                    height: 50,
                                                    width: 50,
                                                    variant: IconButtonVariant
                                                        .FillAmber500,
                                                    child: CommonImageView(
                                                        imagePath: ImageConstant
                                                            .imgGroup11)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 16,
                                                        top: 6,
                                                        bottom: 7),
                                                    child: Text(
                                                        "lbl_starred".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular18
                                                            .copyWith()))
                                              ]))),
                                  Container(
                                      height: getVerticalSize(1.00),
                                      width: size.width,
                                      margin: getMargin(top: 24),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.gray300)),
                                ]))))
                  ]))),
              Container(
                  decoration:
                  BoxDecoration(color: ColorConstant.gray50, boxShadow: [
                    BoxShadow(
                        color: ColorConstant.gray70021,
                        spreadRadius: getHorizontalSize(2.00),
                        blurRadius: getHorizontalSize(2.00),
                        offset: Offset(0, 0))
                  ]),
                  child: Padding(
                      padding: EdgeInsets.only(
                          top: getVerticalSize(11.00),
                          bottom: getVerticalSize(18.00)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                                padding:
                                EdgeInsets.only(top: getVerticalSize(2.79)),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: getHorizontalSize(8.75),
                                                  right:
                                                  getHorizontalSize(6.75)),
                                              child: Container(
                                                  height:
                                                  getVerticalSize(23.46),
                                                  width:
                                                  getHorizontalSize(30),
                                                  child: Icon(Icons.home,color:Colors.blueAccent.shade200)
                                              ))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: getVerticalSize(9)),
                                              child: Text("Home",
                                                  overflow:
                                                  TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .textstyleinterregular14
                                                      .copyWith(
                                                      fontSize: getFontSize(
                                                          20),color:Colors.blueAccent.shade200))))
                                    ])),
                            GestureDetector(onTap: (){
                              onTapColumnicon6();
                            },child:Padding(
                                padding:
                                EdgeInsets.only(top: getVerticalSize(1.25)),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(10.00),
                                              right: getHorizontalSize(10.00)),
                                          child: Container(
                                            height: getVerticalSize(26.88),
                                            width: getHorizontalSize(25.00),
                                            child: Icon(Icons.notifications,color:Colors.grey.shade500),
                                          )),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: getVerticalSize(9)),
                                              child: Text(
                                                  "Notifications",
                                                  overflow:
                                                  TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: AppStyle
                                                      .textstyleinterregular141
                                                      .copyWith(
                                                      fontSize: getFontSize(
                                                          20),color:Colors.grey.shade500))))
                                    ]))),
                            GestureDetector(
                                onTap: () {
                                  onTapColumnicon5();
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(
                                    ),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: getHorizontalSize(8.75),
                                                  right:
                                                  getHorizontalSize(9.76)),
                                              child: Container(
                                                  height:
                                                  getVerticalSize(23.75),
                                                  width:
                                                  getHorizontalSize(22.49),
                                                  child: Icon(Icons.person,color:Colors.grey.shade500)
                                              )),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      top: getVerticalSize(
                                                          9)),
                                                  child: Text("Profile",
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: AppStyle
                                                          .textstyleinterregular141
                                                          .copyWith(
                                                          fontSize:
                                                          getFontSize(
                                                              20),color:Colors.grey.shade500))))
                                        ])))
                          ])))
            ])));
  }

  onTapRowrepositories() {
    Get.toNamed(AppRoutes.repositoriesScreen);
  }

  onTapRoworganizations() {
    Get.toNamed(AppRoutes.organizationScreen);
  }

  onTapRowstarred() {
    Get.toNamed(AppRoutes.starredScreen);
  }

  onTapColumnicon5() {
    Get.toNamed(AppRoutes.profileScreen);
  }
  onTapColumnicon6() {
    Get.toNamed(AppRoutes.notificationScreen);
  }
  moveToSearchScreen(){
    Get.toNamed(AppRoutes.searchScreen);
  }
  onTapPullReq(){
    Get.toNamed(AppRoutes.pullScreen);
  }
  onTapIssue(){
    Get.toNamed(AppRoutes.issueScreen);
  }
}
