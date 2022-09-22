import 'controller/pinned_controller.dart';
import 'package:flutter/material.dart';
import 'package:github/core/app_export.dart';
import 'package:flutter_html/flutter_html.dart';

class PinnedScreen extends GetWidget<PinnedController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                  Container(
                      width: double.infinity,
                      decoration: AppDecoration.fillGray54,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    width: size.width,
                                    margin: getMargin(top: 24),
                                    child: Padding(
                                        padding:
                                            getPadding(left: 16, right: 16),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              45.00)),
                                                  child: Container(
                                                    child: GestureDetector(
                                                        onTap: (() =>
                                                            {Get.back()}),
                                                        child: Icon(Icons
                                                            .arrow_back_outlined)),
                                                  )),
                                            ])))),
                            Align(
                                alignment: Alignment.centerLeft,
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
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      getHorizontalSize(10.00)),
                                              child: Obx(() => CommonImageView(
                                                  url: controller
                                                      .pinnedModelObj
                                                      .value
                                                      .circleimageImg
                                                      .value,
                                                  height: getSize(20.00),
                                                  width: getSize(20.00)))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 8, bottom: 1),
                                              child: Obx(() => Text(
                                                  controller
                                                      .pinnedModelObj
                                                      .value
                                                      .cookytechlearnTxt
                                                      .value,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium16
                                                      .copyWith())))
                                        ]))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(
                                        left: 16, top: 24, right: 16),
                                    child: Obx(() => Text(
                                        controller.pinnedModelObj.value
                                            .rpcplaygroundTxt.value,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold24
                                            .copyWith())))),
                            Container(
                                width: getHorizontalSize(396.00),
                                margin: getMargin(left: 10, top: 16, right: 10),
                                child: Obx(() => Text(
                                    controller.pinnedModelObj.value
                                        .descriptionTxt.value,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular16
                                        .copyWith()))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(
                                        left: 16, top: 16, right: 16),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  left: 2.5,
                                                  top: 2.5,
                                                  bottom: 2.6400146),
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgIcon22,
                                                  height:
                                                      getVerticalSize(14.86),
                                                  width: getHorizontalSize(
                                                      15.43))),
                                          Container(
                                              margin: getMargin(
                                                  left: 10.07, top: 1),
                                              child: Obx(() => RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text: controller
                                                            .pinnedModelObj
                                                            .value
                                                            .star
                                                            .value,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .bluegray900,
                                                            fontSize:
                                                                getFontSize(16),
                                                            fontFamily: 'Inter',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)),
                                                    TextSpan(
                                                        text: "lbl_star".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .bluegray400,
                                                            fontSize:
                                                                getFontSize(16),
                                                            fontFamily: 'Inter',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400))
                                                  ]),
                                                  textAlign: TextAlign.left))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 26.080002,
                                                  top: 1.25,
                                                  bottom: 1.25),
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgIcon23,
                                                  height:
                                                      getVerticalSize(17.50),
                                                  width: getHorizontalSize(
                                                      15.83))),
                                          Container(
                                              margin: getMargin(
                                                  left: 10.089996, top: 1),
                                              child: Obx(() => RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text: controller
                                                            .pinnedModelObj
                                                            .value
                                                            .forks
                                                            .value,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .bluegray900,
                                                            fontSize:
                                                                getFontSize(16),
                                                            fontFamily: 'Inter',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)),
                                                    TextSpan(
                                                        text: "lbl_forks".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .bluegray400,
                                                            fontSize:
                                                                getFontSize(16),
                                                            fontFamily: 'Inter',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400))
                                                  ]),
                                                  textAlign: TextAlign.left))),
                                          Obx(() => controller
                                                      .pinnedModelObj
                                                      .value
                                                      .isForkAvailable
                                                      .value ==
                                                  true
                                              ? GestureDetector(
                                                  onTap: (() => {
                                                        onTapCreateForks(
                                                            controller
                                                                .pinnedModelObj
                                                                .value
                                                                .fullName
                                                                .value)
                                                      }),
                                                  child: Container(
                                                      margin: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                                  8.17),
                                                          top: getVerticalSize(
                                                              1.00)),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_create"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .blue800,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                16),
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontWeight:
                                                                            FontWeight.w400)),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_forks"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .blue800,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                16),
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontWeight:
                                                                            FontWeight.w400))
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left)))
                                              : Container())
                                        ]))),
                          ])),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(
                                    left: 17.67, top: 23, right: 17.67),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                          padding: getPadding(
                                              top: 1.6699829,
                                              bottom: 0.6600342),
                                          child: CommonImageView(
                                              svgPath: ImageConstant.imgGroup14,
                                              height: getSize(16.67),
                                              width: getSize(16.67))),
                                      Padding(
                                          padding: getPadding(left: 17.66),
                                          child: Text("lbl_readme_md".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtLigconsolataRegular18Bluegray700
                                                  .copyWith()))
                                    ]))),
                        Container(
                            child: Obx(() => SingleChildScrollView(
                                    child: Html(
                                  data: controller
                                      .pinnedModelObj.value.readme.value,
                                  onImageError: (exception, stackTrace) {
                                    return;
                                  },
                                )))),
                        Container(
                          padding: EdgeInsets.all((30)),
                        )
                      ]))))
                ]))));
  }

  onTapCreateForks(String repoToFork) {
    controller.createFork(repoToFork);
  }
}
