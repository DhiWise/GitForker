import 'package:github/presentation/issue_screen/widgets/issue_item_widget.dart';
import 'controller/issue_controller.dart';
import 'models/issue_item_model.dart';
import 'package:flutter/material.dart';
import 'package:github/core/app_export.dart';

class IssueScreen extends GetWidget<IssueController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      Container(
                          width: double.infinity,
                          decoration: AppDecoration.outlineGray70021,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: size.width,
                                    margin:
                                        getMargin(left: 16, top: 20, right: 16),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                              padding:
                                                  getPadding(left: 3, top: 5),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    GestureDetector(
                                                        onTap: () {
                                                          onTapImgArrowleft();
                                                        },
                                                        child: Padding(
                                                            padding: getPadding(
                                                                top: 1,
                                                                bottom: 8),
                                                            child: GestureDetector(
                                                                onTap: (() => {
                                                                      Get.back()
                                                                    }),
                                                                child: Icon(Icons
                                                                    .arrow_back_outlined)))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 19),
                                                        child: Text("Issues",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterBold24
                                                                .copyWith()))
                                                  ])),
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 24, bottom: 12),
                                    )
                              ])),
                      Container(
                          margin: getMargin(top: 24),
                          decoration: AppDecoration.fillWhiteA700,
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
                              itemCount: controller
                                  .issueModelObj.value.issueItemList.length,
                              itemBuilder: (context, index) {
                                IssueItemModel model = controller
                                    .issueModelObj.value.issueItemList[index];
                                return IssueItemWidget(model);
                              })))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
