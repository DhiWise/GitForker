import '../organization_screen/widgets/organization_item_widget.dart';
import 'controller/organization_controller.dart';
import 'models/organization_item_model.dart';
import 'package:flutter/material.dart';
import 'package:github/core/app_export.dart';

class OrganizationScreen extends GetWidget<OrganizationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        decoration:
                        BoxDecoration(color: ColorConstant.whiteA700),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
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
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        16.00),
                                                    top: getVerticalSize(22.00),
                                                    bottom:
                                                    getVerticalSize(46.00)),
                                                child: ClipRRect(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            45.00)),
                                                    child: Container(
                                                        child: GestureDetector(onTap: (()=>{Get.back()}),child:Icon(Icons.arrow_back_outlined))
                                                    ))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        12.00),
                                                    top: getVerticalSize(20.00),
                                                    right: getHorizontalSize(
                                                        200.00),
                                                    bottom:
                                                    getVerticalSize(43.00)),
                                                child: Text(
                                                    "lbl_organization".tr,
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .textstyleinterbold24
                                                        .copyWith(
                                                        fontSize:
                                                        getFontSize(
                                                            26))))
                                          ]))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      top: getVerticalSize(24.00),
                                      right: getHorizontalSize(10.00),
                                      bottom: getVerticalSize(74.00)),
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
                                      itemCount: controller.organizationModelObj
                                          .value.organizationItemList.length,
                                      itemBuilder: (context, index) {
                                        OrganizationItemModel model = controller
                                            .organizationModelObj
                                            .value
                                            .organizationItemList[index];
                                        return OrganizationItemWidget(model);
                                      })))
                            ]))))));
  }
}
