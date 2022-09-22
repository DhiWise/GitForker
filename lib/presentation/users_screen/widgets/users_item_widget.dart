import '../controller/users_controller.dart';
import '../models/users_item_model.dart';
import 'package:flutter/material.dart';
import 'package:github/core/app_export.dart';

// ignore: must_be_immutable
class UserItemWidget extends StatelessWidget {
  UserItemWidget(this.userItemModelObj);

  UserItemModel userItemModelObj;

  var controller = Get.find<UsersController>();

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
                url: userItemModelObj.imageImg.value,
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
                          userItemModelObj.dhiWiseTxt.value,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
