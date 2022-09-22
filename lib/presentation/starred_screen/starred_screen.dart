import '../starred_screen/widgets/listicon_item_widget.dart';
import 'controller/starred_controller.dart';
import 'models/listicon_item_model.dart';
import 'package:flutter/material.dart';
import 'package:github/core/app_export.dart';

class StarredScreen extends GetWidget<StarredController> {
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: ColorConstant.gray50,
                                          boxShadow: [
                                            BoxShadow(
                                                color: ColorConstant.gray70021,
                                                spreadRadius:
                                                getHorizontalSize(2.00),
                                                blurRadius:
                                                getHorizontalSize(2.00),
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
                                                        top: getVerticalSize(
                                                            20.00),
                                                        bottom: getVerticalSize(
                                                            20.00)),
                                                    child: Padding(
                                                        padding: EdgeInsets.only(
                                                            left:
                                                            getHorizontalSize(
                                                                15.00),
                                                            right:
                                                            getHorizontalSize(
                                                                269.00)),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .min,
                                                            children: [
                                                              Padding(
                                                                  padding: EdgeInsets.only(
                                                                      top: getVerticalSize(
                                                                          14.00),
                                                                      bottom: getVerticalSize(
                                                                          14.00)),
                                                                  child: ClipRRect(
                                                                      borderRadius:
                                                                      BorderRadius.circular(getHorizontalSize(
                                                                          45.00)),
                                                                      child: Container(
                                                                          child:GestureDetector(onTap: (()=>{Get.back()}),child:Icon(Icons.arrow_back_outlined))
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
                                                                        Text(
                                                                            Get.find<PrefUtils>().getUsername(),
                                                                            overflow:
                                                                            TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.textstyleintermedium161.copyWith(fontSize: getFontSize(16))),
                                                                        Padding(
                                                                            padding:
                                                                            EdgeInsets.only(top: getVerticalSize(4.00), right: getHorizontalSize(10.00)),
                                                                            child: Text("lbl_starred".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.textstyleinterbold24.copyWith(fontSize: getFontSize(26))))
                                                                      ]))
                                                            ]))))
                                          ]))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      top: getVerticalSize(24.00),
                                      right: getHorizontalSize(10.00),
                                      bottom: getVerticalSize(39.00)),
                                  child: Obx(() => ListView.separated(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return Container(
                                            height: getVerticalSize(1.00),
                                            width: size.width,
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray300));
                                      },
                                      itemCount: controller.starredModelObj
                                          .value.listiconItemList.length,
                                      itemBuilder: (context, index) {
                                        ListiconItemModel model = controller
                                            .starredModelObj
                                            .value
                                            .listiconItemList[index];
                                        return ListiconItemWidget(model,onTapColumnmongoosetypesc:()=>{onTapColumnmongoosetypesc(index)});
                                      })))
                            ]))))));
  }
  onTapColumnmongoosetypesc(int name) {
      Get.toNamed(AppRoutes.pinnedScreen, arguments: {
        NavigationArgs.repo: controller.getStarredResp[name].fullName,
      });
  }
}
