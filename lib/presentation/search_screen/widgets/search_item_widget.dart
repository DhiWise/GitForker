import '../controller/search_controller.dart';
import '../models/search_item_model.dart';
import 'package:flutter/material.dart';
import 'package:github/core/app_export.dart';

// ignore: must_be_immutable
class SearchItemWidget extends StatelessWidget {
  SearchItemWidget(this.searchItemModelObj);

  SearchItemModel searchItemModelObj;

  var controller = Get.find<SearchController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        left: 18,
        top: 5.0,
        right: 18,
        bottom: 5.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: getPadding(
              left: 12,
              top: 8,
              right: 12.110001,
              bottom: 5,
            ),
            decoration: AppDecoration.txtOutlineBlack90044.copyWith(
              borderRadius: BorderRadiusStyle.txtRoundedBorder6,
            ),
            child: Text(
              "lbl_a".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: AppStyle.txtRobotoRegular23Black90012.copyWith(),
            ),
          ),
          Container(
            margin: getMargin(
              left: 4,
            ),
            padding: getPadding(
              left: 12.5,
              top: 8,
              right: 12.610001,
              bottom: 5,
            ),
            decoration: AppDecoration.txtOutlineBlack90044.copyWith(
              borderRadius: BorderRadiusStyle.txtRoundedBorder6,
            ),
            child: Text(
              "lbl_s".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: AppStyle.txtRobotoRegular23Black90012.copyWith(),
            ),
          ),
          Container(
            margin: getMargin(
              left: 4,
            ),
            padding: getPadding(
              left: 12,
              top: 8,
              right: 12.110001,
              bottom: 5,
            ),
            decoration: AppDecoration.txtOutlineBlack90044.copyWith(
              borderRadius: BorderRadiusStyle.txtRoundedBorder6,
            ),
            child: Text(
              "lbl_d".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: AppStyle.txtRobotoRegular23Black90012.copyWith(),
            ),
          ),
          Container(
            margin: getMargin(
              left: 4,
            ),
            padding: getPadding(
              left: 13,
              top: 8,
              right: 13.110001,
              bottom: 5,
            ),
            decoration: AppDecoration.txtOutlineBlack90044.copyWith(
              borderRadius: BorderRadiusStyle.txtRoundedBorder6,
            ),
            child: Text(
              "lbl_f".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: AppStyle.txtRobotoRegular23Black90012.copyWith(),
            ),
          ),
          Container(
            margin: getMargin(
              left: 4,
            ),
            padding: getPadding(
              left: 11.5,
              top: 8,
              right: 11.610001,
              bottom: 5,
            ),
            decoration: AppDecoration.txtOutlineBlack90044.copyWith(
              borderRadius: BorderRadiusStyle.txtRoundedBorder6,
            ),
            child: Text(
              "lbl_g".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: AppStyle.txtRobotoRegular23Black90012.copyWith(),
            ),
          ),
          Container(
            margin: getMargin(
              left: 4.0099945,
            ),
            padding: getPadding(
              left: 11.5,
              top: 8,
              right: 11.609985,
              bottom: 5,
            ),
            decoration: AppDecoration.txtOutlineBlack90044.copyWith(
              borderRadius: BorderRadiusStyle.txtRoundedBorder6,
            ),
            child: Text(
              "lbl_h".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: AppStyle.txtRobotoRegular23Black90012.copyWith(),
            ),
          ),
          Container(
            margin: getMargin(
              left: 4.0000305,
            ),
            padding: getPadding(
              left: 13,
              top: 8,
              right: 13.110016,
              bottom: 5,
            ),
            decoration: AppDecoration.txtOutlineBlack90044.copyWith(
              borderRadius: BorderRadiusStyle.txtRoundedBorder6,
            ),
            child: Text(
              "lbl_j".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: AppStyle.txtRobotoRegular23Black90012.copyWith(),
            ),
          ),
          Container(
            margin: getMargin(
              left: 3.9999695,
            ),
            padding: getPadding(
              left: 12.5,
              top: 8,
              right: 12.610016,
              bottom: 5,
            ),
            decoration: AppDecoration.txtOutlineBlack90044.copyWith(
              borderRadius: BorderRadiusStyle.txtRoundedBorder6,
            ),
            child: Text(
              "lbl_k".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: AppStyle.txtRobotoRegular23Black90012.copyWith(),
            ),
          ),
          Container(
            margin: getMargin(
              left: 4,
            ),
            padding: getPadding(
              left: 13.5,
              top: 8,
              right: 13.609985,
              bottom: 5,
            ),
            decoration: AppDecoration.txtOutlineBlack90044.copyWith(
              borderRadius: BorderRadiusStyle.txtRoundedBorder6,
            ),
            child: Text(
              "lbl_l".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: AppStyle.txtRobotoRegular23Black90012.copyWith(),
            ),
          ),
        ],
      ),
    );
  }
}
