import '../controller/pull_requests_controller.dart';
import '../models/pull_requests_item_model.dart';
import 'package:flutter/material.dart';
import 'package:github/core/app_export.dart';

// ignore: must_be_immutable
class PullRequestsItemWidget extends StatelessWidget {
  PullRequestsItemWidget(this.pullRequestsItemModelObj);

  PullRequestsItemModel pullRequestsItemModelObj;

  var controller = Get.find<PullRequestsController>();

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
                                svgPath: ImageConstant.imgSettings21X21,
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
                                    pullRequestsItemModelObj
                                        .sandresorhusTxt.value,
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
                      right:0,
                      bottom: 24,
                    ),
                    child: Obx(
                      () => Text(
                        pullRequestsItemModelObj.featureAddedTxt.value,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterMedium16.copyWith(),
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
