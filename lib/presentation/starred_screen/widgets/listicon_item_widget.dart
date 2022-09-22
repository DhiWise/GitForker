import '../controller/starred_controller.dart';
import '../models/listicon_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:github/core/app_export.dart';

// ignore: must_be_immutable
class ListiconItemWidget extends StatelessWidget {
  ListiconItemWidget(this.listiconItemModelObj,
      {this.onTapColumnmongoosetypesc});

  ListiconItemModel listiconItemModelObj;

  var controller = Get.find<StarredController>();

  VoidCallback? onTapColumnmongoosetypesc;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumnmongoosetypesc!();
      },
        child:
        Container(
      // height: getVerticalSize(
      //   150.00,
      // ),
      width: getHorizontalSize(
        396.00,
      ),
      margin: EdgeInsets.only(
        top: getVerticalSize(
          24.00,
        ),
        bottom: getVerticalSize(
          24.00,
        ),
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.centerLeft,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            10.00,
                          ),
                        ),
                        child: Obx(
                              () => CommonImageView(
                            url: listiconItemModelObj.circleimageImg.value,
                            height: getSize(
                              20.00,
                            ),
                            width: getSize(
                              20.00,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            8.00,
                          ),
                          bottom: getVerticalSize(
                            1.00,
                          ),
                        ),
                        child: Obx(
                              () => Text(
                            listiconItemModelObj.robWTxt.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.textstyleintermedium163.copyWith(
                              fontSize: getFontSize(
                                16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    396.00,
                  ),
                  // height: getVerticalSize(100.00),
                  margin: EdgeInsets.only(
                    top: getVerticalSize(
                      13.00,
                    ),
                  ),
                  child: Obx(
                        () => Text(
                      listiconItemModelObj.cORSAnywhereiTxt.value,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.textstyleinterregular16.copyWith(
                        fontSize: getFontSize(
                          16,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: getVerticalSize(
                      16.00,
                    ),
                    right: getHorizontalSize(
                      8.00,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            2.00,
                          ),
                          top: getVerticalSize(
                            3.00,
                          ),
                          bottom: getVerticalSize(
                            2.00,
                          ),
                        ),
                        child: Container(
                          height: getVerticalSize(
                            15.00,
                          ),
                          width: getHorizontalSize(
                            15.72,
                          ),
                          child: SvgPicture.asset(
                            ImageConstant.imgVector2,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            10.28,
                          ),
                          top: getVerticalSize(
                            1.00,
                          ),
                        ),
                        child: Obx(
                              () => Text(
                            listiconItemModelObj.k68kTxt.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.textstyleinterregular162.copyWith(
                              fontSize: getFontSize(
                                16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: getSize(
                          10.00,
                        ),
                        width: getSize(
                          10.00,
                        ),
                        margin: EdgeInsets.only(
                          left: getHorizontalSize(
                            24.00,
                          ),
                          top: getVerticalSize(
                            5.00,
                          ),
                          bottom: getVerticalSize(
                            5.00,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.indigo500,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              5.00,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            8.00,
                          ),
                          bottom: getVerticalSize(
                            1.00,
                          ),
                        ),
                        child: Obx(
                              () => Text(
                            listiconItemModelObj.javaScriptTxt.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.textstyleinterregular162.copyWith(
                              fontSize: getFontSize(
                                16,
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
          ),
        ],
      ),
    ));
  }
}
