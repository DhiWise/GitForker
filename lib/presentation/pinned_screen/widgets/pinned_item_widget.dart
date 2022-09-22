import '../controller/pinned_controller.dart';
import '../models/pinned_item_model.dart';
import 'package:flutter/material.dart';
import 'package:github/core/app_export.dart';
import 'package:github/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class PinnedItemWidget extends StatelessWidget {
  PinnedItemWidget(this.pinnedItemModelObj);

  PinnedItemModel pinnedItemModelObj;

  var controller = Get.find<PinnedController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          top: 12.0,
          bottom: 12.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomIconButton(
                  height: 34,
                  width: 34,
                  variant: IconButtonVariant.FillGreen500,
                  child: CommonImageView(
                    imagePath: ImageConstant.imgGroup13,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 6,
                    bottom: 7,
                  ),
                  child: Text(
                    "lbl_issues".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular18.copyWith(),
                  ),
                ),
              ],
            ),
            Padding(
              padding: getPadding(
                left: 282,
                top: 6,
                bottom: 7,
              ),
              child: Text(
                "lbl_0".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterRegular18Bluegray700.copyWith(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
