import '../controller/issue_controller.dart';
import '../models/issue_item_model.dart';
import 'package:flutter/material.dart';
import 'package:github/core/app_export.dart';

// ignore: must_be_immutable
class IssueItemWidget extends StatelessWidget {
  IssueItemWidget(this.issueItemModelObj);

  IssueItemModel issueItemModelObj;

  var controller = Get.find<IssueController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA700,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: size.width,
              margin: getMargin(
                bottom: 1,
              ),
              decoration: AppDecoration.fillWhiteA700,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 10,
                        right: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              CommonImageView(
                                svgPath: ImageConstant.imgSettings22X22,
                                height: getSize(
                                  21.00,
                                ),
                                width: getSize(
                                  21.00,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 9,
                                  top: 10,
                                  bottom: 1,
                                ),
                                child: Obx(
                                  () => Text(
                                    issueItemModelObj.sandresorhusTxt.value,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtInterRegular16.copyWith(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      309.00,
                    ),
                    margin: getMargin(
                      left: 37,
                      top: 9,
                      right: 0,
                      bottom: 15,
                    ),
                    child: Obx(
                      () => Text(
                        issueItemModelObj.featureAddedTxt.value,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterMedium16.copyWith(),
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      309.00,
                    ),
                    margin: getMargin(
                      left: 37,
                      bottom: 24,
                    ),
                    child: Obx(
                      () => Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(10.00)),
                              child: CommonImageView(
                                  url: issueItemModelObj.profilePic.value,
                                  height: getSize(25.00),
                                  width: getSize(25.00))),
                          Padding(
                              padding: getPadding(left: 8, bottom: 1),
                              child: Obx(() => Text(
                                  "By " + issueItemModelObj.assignBy.value,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium16.copyWith())))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
