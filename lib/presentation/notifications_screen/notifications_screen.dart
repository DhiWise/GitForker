import '../notifications_screen/widgets/notifications_item_widget.dart';
import 'controller/notifications_controller.dart';
import 'models/notifications_item_model.dart';
import 'package:flutter/material.dart';
import 'package:github/core/app_export.dart';

class NotificationsScreen extends GetWidget<NotificationsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Column(children: [
              Expanded(
                  child: Container(
                      width: size.width,
                      child: SingleChildScrollView(
                          child: Container(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                            Container(
                                width: double.infinity,
                                decoration: AppDecoration.fillGray50,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: double.infinity,
                                          decoration:
                                              AppDecoration.outlineGray70021,
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        left: 16,
                                                        top: 21,
                                                        right: 16),
                                                    child: Text(
                                                        "lbl_notifications".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterBold24
                                                            .copyWith())),
                                                Container(
                                                    margin: getMargin(
                                                        left: 16,
                                                        top: 27,
                                                        right: 16,
                                                        bottom: 12),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    16.50))),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: []))
                                              ])),
                                      Container(
                                          margin: getMargin(top: 24),
                                          decoration:
                                              AppDecoration.fillWhiteA700,
                                          child: Obx(() => ListView.separated(
                                              physics: BouncingScrollPhysics(),
                                              shrinkWrap: true,
                                              separatorBuilder:
                                                  (context, index) {
                                                return Container(
                                                    height:
                                                        getVerticalSize(1.00),
                                                    width: size.width,
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .gray300));
                                              },
                                              itemCount: controller
                                                  .notificationsModelObj
                                                  .value
                                                  .notificationsItemList
                                                  .length,
                                              itemBuilder: (context, index) {
                                                NotificationsItemModel model =
                                                    controller
                                                            .notificationsModelObj
                                                            .value
                                                            .notificationsItemList[
                                                        index];
                                                return NotificationsItemWidget(
                                                    model);
                                              })))
                                    ]))
                          ]))))),
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
                                                  right: getHorizontalSize(15)),
                                              child: Container(
                                                  height:
                                                      getVerticalSize(23.46),
                                                  width:
                                                      getHorizontalSize(22.50),
                                                  child: Icon(Icons.home,
                                                      color:
                                                          Colors.grey.shade500)
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
                                                                      20),
                                                              color: Colors.grey
                                                                  .shade500))))
                                        ]))),
                            Padding(
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
                                            child: Icon(Icons.notifications,
                                                color:
                                                    Colors.blueAccent.shade200),
                                          )),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: getVerticalSize(9)),
                                              child: Text("Notifications",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: AppStyle
                                                      .textstyleinterregular141
                                                      .copyWith(
                                                          fontSize:
                                                              getFontSize(20),
                                                          color: Colors
                                                              .grey.shade500))))
                                    ])),
                            GestureDetector(
                                onTap: () {
                                  onTapColumnicon5();
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(),
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
                                                  child: Icon(Icons.person,
                                                      color:
                                                          Colors.grey.shade500)
                                                  )),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      top: getVerticalSize(9)),
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
                                                                      20),
                                                              color: Colors.grey
                                                                  .shade500))))
                                        ])))
                          ])))
            ])));
  }

  onTapColumnicon5() {
    Get.toNamed(AppRoutes.profileScreen);
  }

  onTapColumnicon4() {
    Get.toNamed(AppRoutes.homeScreen);
  }
}
