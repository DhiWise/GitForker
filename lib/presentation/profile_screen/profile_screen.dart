import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:github/core/app_export.dart';
import 'package:flutter_html/flutter_html.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  @override
  Widget build(BuildContext context) {
    List<String> listOfMenu = ["Repositories","Starred","Organization"];
    List<String> listOfIcon = [ImageConstant.imgGroup7,ImageConstant.imgGroup11,ImageConstant.imgGroup9];
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Column(children: [
              Expanded(
                  child: Container(
                      decoration: BoxDecoration(color: ColorConstant.gray50),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                                child: SingleChildScrollView(
                                    padding: EdgeInsets.only(
                                        top: getVerticalSize(21.00)),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [

                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          16.00),
                                                      top: getVerticalSize(
                                                          25.00),
                                                      right: getHorizontalSize(
                                                          16.00)),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .center,
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      children: [
                                                        ClipRRect(
                                                            borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    35.00)),
                                                            child: Obx(() => CommonImageView(
                                                                url: controller
                                                                    .profileModelObj
                                                                    .value
                                                                    .circleimageImg
                                                                    .value,
                                                                height: getSize(
                                                                    70.00),
                                                                width: getSize(
                                                                    70.00)))),
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                left:
                                                                getHorizontalSize(
                                                                    16.00),
                                                                top: getVerticalSize(
                                                                    7.00),
                                                                bottom:
                                                                getVerticalSize(
                                                                    9.00)),
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
                                                                  Obx(() => Text(
                                                                      controller
                                                                          .profileModelObj
                                                                          .value
                                                                          .sindreSorhusTxt
                                                                          .value,
                                                                      overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                      textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                      style: AppStyle
                                                                          .textstyleinterbold24
                                                                          .copyWith(
                                                                          fontSize: getFontSize(24)))),
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          top: getVerticalSize(
                                                                              4.00),
                                                                          right: getHorizontalSize(
                                                                              10.00)),
                                                                      child: Obx(() => Text(
                                                                          controller
                                                                              .profileModelObj
                                                                              .value
                                                                              .sindresorhusTxt
                                                                              .value,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .textstyleinterregular183
                                                                              .copyWith(fontSize: getFontSize(18)))))
                                                                ]))
                                                      ]))),

                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  width:
                                                  getHorizontalSize(396.00),
                                                  margin: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          16.00),
                                                      top: getVerticalSize(
                                                          16.00),
                                                      right: getHorizontalSize(
                                                          16.00)),
                                                  child: Obx(()=>Text(
                                                      controller
                                                          .profileModelObj
                                                          .value.desc.value,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .textstyleinterregular16
                                                          .copyWith(
                                                          fontSize:
                                                          getFontSize(
                                                              16)))))),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          17.33),
                                                      top: getVerticalSize(
                                                          16.00),
                                                      right: getHorizontalSize(
                                                          17.33)),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      mainAxisSize:
                                                      MainAxisSize.min,
                                                      children: [
                                                        Container(
                                                            child: Container(
                                                                height:
                                                                getVerticalSize(
                                                                    9),
                                                                width:
                                                                getHorizontalSize(
                                                                    20),
                                                                child: Icon(Icons.location_on,color: Colors.grey.shade500,size: 20,)
                                                            )),
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                left:
                                                                getHorizontalSize(
                                                                    9.34)
                                                            ),
                                                            child: Obx(() => Text(
                                                                controller
                                                                    .profileModelObj
                                                                    .value
                                                                    .sanFranciscoTxt
                                                                    .value,
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign
                                                                    .left,
                                                                style: AppStyle
                                                                    .textstyleinterregular18
                                                                    .copyWith(
                                                                    fontSize:
                                                                    getFontSize(18)))))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          16.00),
                                                      top: getVerticalSize(
                                                          20.00),
                                                      right: getHorizontalSize(
                                                          16.00)),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                            child: Container(
                                                                height:
                                                                getVerticalSize(
                                                                    9),
                                                                width:
                                                                getHorizontalSize(
                                                                    20),
                                                                child:Icon(Icons.person,color:Colors.grey.shade500,size: 20)
                                                            )),
                                                        Container(
                                                            margin: EdgeInsets.only(
                                                                left:
                                                                getHorizontalSize(
                                                                    10.00),
                                                                bottom:
                                                                getVerticalSize(
                                                                    2.00)),
                                                            child: Obx(()=> RichText(
                                                                text: TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                          text: controller
                                                                              .profileModelObj
                                                                              .value.follower.value,
                                                                          style: TextStyle(
                                                                              color: ColorConstant.bluegray900,
                                                                              fontSize: getFontSize(18),
                                                                              fontFamily: 'Inter',
                                                                              fontWeight: FontWeight.w400)),
                                                                      TextSpan(
                                                                          text: " "+"lbl_followers"
                                                                              .tr,
                                                                          style: TextStyle(
                                                                              color: ColorConstant.bluegray900,
                                                                              fontSize: getFontSize(18),
                                                                              fontFamily: 'Inter',
                                                                              fontWeight: FontWeight.w400))
                                                                    ]),
                                                                textAlign:
                                                                TextAlign
                                                                    .left))),
                                                        Container(
                                                            height:
                                                            getSize(4.00),
                                                            width:
                                                            getSize(4.00),
                                                            margin: EdgeInsets.only(
                                                                left:
                                                                getHorizontalSize(
                                                                    8.00),
                                                                top:
                                                                getVerticalSize(
                                                                    9.00),
                                                                bottom:
                                                                getVerticalSize(
                                                                    9.00)),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .bluegray900,
                                                                borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                    getHorizontalSize(2.00)))),
                                                        Container(
                                                            margin: EdgeInsets.only(
                                                                left:
                                                                getHorizontalSize(
                                                                    11.00)),
                                                            child: Obx(()=> RichText(
                                                                text: TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                          text: controller
                                                                              .profileModelObj
                                                                              .value.following.value
                                                                              .tr,
                                                                          style: TextStyle(
                                                                              color: ColorConstant.bluegray900,
                                                                              fontSize: getFontSize(18),
                                                                              fontFamily: 'Inter',
                                                                              fontWeight: FontWeight.w400)),
                                                                      TextSpan(
                                                                          text: " "+"lbl_following"
                                                                              .tr,
                                                                          style: TextStyle(
                                                                              color: ColorConstant.bluegray900,
                                                                              fontSize: getFontSize(18),
                                                                              fontFamily: 'Inter',
                                                                              fontWeight: FontWeight.w400))
                                                                    ]),
                                                                textAlign:
                                                                TextAlign
                                                                    .left)))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                  height:
                                                  getVerticalSize(30.00),
                                                  width: size.width,
                                                  margin: EdgeInsets.only(
                                                      top: getVerticalSize(
                                                          24.00)),
                                                  child: Stack(
                                                      alignment:
                                                      Alignment.centerLeft,
                                                      children: [
                                                        Container(
                                                            height:
                                                            getVerticalSize(
                                                                1.00),
                                                            width: size.width,
                                                            margin: EdgeInsets.only(
                                                                top:
                                                                getVerticalSize(
                                                                    6.00),
                                                                bottom:
                                                                getVerticalSize(
                                                                    10.00)),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .gray300)),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Container(
                                                                height:
                                                                getVerticalSize(
                                                                    30.00),
                                                                width:
                                                                size.width,
                                                                decoration:
                                                                BoxDecoration(
                                                                    color: ColorConstant
                                                                        .bluegray50)))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                  margin: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          16.00),
                                                      top: getVerticalSize(
                                                          16.00),
                                                      right: getHorizontalSize(
                                                          16.00)),
                                                  child: Obx(()=> RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text: controller.profileModelObj.value.sindresorhusTxt.value,
                                                            style: TextStyle(
                                                                color: ColorConstant
                                                                    .bluegray900,
                                                                fontSize:
                                                                getFontSize(
                                                                    18),
                                                                fontFamily:
                                                                'Ligconsolata',
                                                                fontWeight:
                                                                FontWeight
                                                                    .w400)),
                                                        TextSpan(
                                                            text:
                                                            '/${"lbl_readme".tr}',
                                                            style: TextStyle(
                                                                color: ColorConstant
                                                                    .bluegray900,
                                                                fontSize:
                                                                getFontSize(
                                                                    18),
                                                                fontFamily:
                                                                'Ligconsolata',
                                                                fontWeight:
                                                                FontWeight
                                                                    .w700)),
                                                        TextSpan(
                                                            text: "lbl_md".tr,
                                                            style: TextStyle(
                                                                color: ColorConstant
                                                                    .bluegray900,
                                                                fontSize:
                                                                getFontSize(
                                                                    18),
                                                                fontFamily:
                                                                'Ligconsolata',
                                                                fontWeight:
                                                                FontWeight
                                                                    .w400))
                                                      ]),
                                                      textAlign:
                                                      TextAlign.left)))),

                                          Container(
                                            // height: 100,
                                            width: size.width,
                                            margin: EdgeInsets.only(
                                                top: getVerticalSize(16.00)),
                                            child: Obx(()=> SingleChildScrollView(child:Html(data: controller.profileModelObj.value.readme.value,
                                              onImageError: (exception, stackTrace) {
                                                return;
                                              },

                                            ))),
                                          ),

                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          10.00),
                                                      top: getVerticalSize(
                                                          23.00),
                                                      right: getHorizontalSize(
                                                          10.00)),
                                                  child: ListView.builder(
                                                      physics:
                                                      NeverScrollableScrollPhysics(),
                                                      shrinkWrap: true,
                                                      itemCount:listOfMenu.length,
                                                      itemBuilder: (context, index) {
                                                        return Align(
                                                          alignment: Alignment.center,
                                                          child: GestureDetector(
                                                            onTap: () {
                                                              onTapRowrepositories!(index);
                                                            },
                                                            child: Padding(
                                                              padding: EdgeInsets.only(
                                                                top: getVerticalSize(
                                                                  12.00,
                                                                ),
                                                                bottom: getVerticalSize(
                                                                  12.00,
                                                                ),
                                                              ),
                                                              child: Row(
                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                mainAxisSize: MainAxisSize.max,
                                                                children: [
                                                                  Row(
                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                    mainAxisSize: MainAxisSize.min,
                                                                    children: [
                                                                      IconButton(
                                                                        onPressed: () {},
                                                                        constraints: BoxConstraints(
                                                                          minHeight: getSize(
                                                                            34.00,
                                                                          ),
                                                                          minWidth: getSize(
                                                                            34.00,
                                                                          ),
                                                                        ),
                                                                        padding: EdgeInsets.all(0),
                                                                        icon: Container(
                                                                          width: getSize(
                                                                            34.00,
                                                                          ),
                                                                          height: getSize(
                                                                            34.00,
                                                                          ),
                                                                          decoration: BoxDecoration(
                                                                            color: ColorConstant.bluegray800,
                                                                            borderRadius: BorderRadius.circular(
                                                                              getHorizontalSize(
                                                                                4.00,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          padding: EdgeInsets.only(
                                                                            left: getHorizontalSize(
                                                                              7.00,
                                                                            ),
                                                                            top: getVerticalSize(
                                                                              7.00,
                                                                            ),
                                                                            right: getHorizontalSize(
                                                                              7.00,
                                                                            ),
                                                                            bottom: getVerticalSize(
                                                                              7.00,
                                                                            ),
                                                                          ),
                                                                          child: Image.asset(
                                                                            listOfIcon[index],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsets.only(
                                                                          left: getHorizontalSize(
                                                                            16.00,
                                                                          ),
                                                                          top: getVerticalSize(
                                                                            6.00,
                                                                          ),
                                                                          bottom: getVerticalSize(
                                                                            7.00,
                                                                          ),
                                                                        ),
                                                                        child: Text(
                                                                          listOfMenu[index],
                                                                          overflow: TextOverflow.ellipsis,
                                                                          textAlign: TextAlign.left,
                                                                          style: AppStyle.textstyleinterregular18.copyWith(
                                                                            fontSize: getFontSize(
                                                                              18,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }))),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      top: getVerticalSize(
                                                          24.00)),
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          30.00),
                                                      width: getHorizontalSize(
                                                          428.00),
                                                      child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgGroup1381,
                                                          fit: BoxFit.fill))))
                                        ])))
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
                            GestureDetector(
                                onTap: () {
                                  onTapColumnicon4();
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        top: getVerticalSize(2.79)),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: getHorizontalSize(7.75),
                                                  right:
                                                  getHorizontalSize(15)),
                                              child: Container(
                                                  height:
                                                  getVerticalSize(23.46),
                                                  width:
                                                  getHorizontalSize(22.50),
                                                  child: Icon(Icons.home,color:Colors.grey.shade500)
                                              )),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      top: getVerticalSize(
                                                          7.75)),
                                                  child: Text("Home",
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
                                        ]))),
                            GestureDetector(onTap: () {
                              onTapColumnicon5();
                            } , child:Padding(
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
                                              child:Icon(Icons.notifications,color:Colors.grey.shade500)
                                          )),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: getVerticalSize(5.87)),
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
                            Padding(
                                padding:
                                EdgeInsets.only(top: getVerticalSize(1)),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(8.75),
                                              right: getHorizontalSize(9.75)),
                                          child: Container(
                                              height: getVerticalSize(23.75),
                                              width: getHorizontalSize(22.50),
                                              child: Icon(Icons.person,color:Colors.blueAccent.shade200)
                                          )),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: getVerticalSize(7.75)),
                                              child: Text("Profile",
                                                  overflow:
                                                  TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: AppStyle
                                                      .textstyleinterregular14
                                                      .copyWith(
                                                      fontSize: getFontSize(
                                                          20),color:Colors.blueAccent.shade200))))
                                    ]))
                          ])))
            ])));
  }

  onTapRowrepositories(index) {
    if(index == 0){
      Get.toNamed(AppRoutes.repositoriesScreen);
    }else if(index == 1){
      Get.toNamed(AppRoutes.starredScreen);
    }else if(index == 2){
      Get.toNamed(AppRoutes.organizationScreen);
    }
  }

  onTapColumnicon4() {
    Get.toNamed(AppRoutes.homeScreen);
  }
  onTapColumnicon5() {
    Get.toNamed(AppRoutes.notificationScreen);
  }
}
