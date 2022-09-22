import '../controller/organization_controller.dart';
import '../models/organization_item_model.dart';
import 'package:flutter/material.dart';
import 'package:github/core/app_export.dart';

// ignore: must_be_immutable
class OrganizationItemWidget extends StatelessWidget {
  OrganizationItemWidget(this.organizationItemModelObj);

  OrganizationItemModel organizationItemModelObj;

  var controller = Get.find<OrganizationController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getVerticalSize(
          24.00,
        ),
        bottom: getVerticalSize(
          24.00,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: getVerticalSize(
                70.00,
              ),
            ),
            child: Obx(
              () => CommonImageView(
                url: organizationItemModelObj.imageImg.value,
                height: getSize(
                  30.00,
                ),
                width: getSize(
                  30.00,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                24.00,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    right: getHorizontalSize(
                      10.00,
                    ),
                  ),
                  child: Obx(
                    () => Text(
                      organizationItemModelObj.dhiWiseTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.textstyleintersemibold18.copyWith(
                        fontSize: getFontSize(
                          18,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    334.00,
                  ),
                  margin: EdgeInsets.only(
                    top: getVerticalSize(
                      13.00,
                    ),
                  ),
                  child: Obx(
                    () => Text(
                      organizationItemModelObj.theultimateopTxt.value,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.textstyleinterregular16.copyWith(
                        fontSize: getFontSize(
                          16,
                        ),
                        height: 1.25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
