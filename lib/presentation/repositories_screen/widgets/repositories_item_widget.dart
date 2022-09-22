import '../controller/repositories_controller.dart';
import '../models/repositories_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:github/core/app_export.dart';

// ignore: must_be_immutable
class RepositoriesItemWidget extends StatelessWidget {
  RepositoriesItemWidget(this.repositoriesItemModelObj,
      {this.onTapColumnmongoosetypesc});

  RepositoriesItemModel repositoriesItemModelObj;

  var controller = Get.find<RepositoriesController>();

  VoidCallback? onTapColumnmongoosetypesc;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumnmongoosetypesc!();
      },
      child: Container(
        margin: EdgeInsets.only(
          top: getVerticalSize(
            24.00,
          ),
          bottom: getVerticalSize(
            24.00,
          ),
        ),
        decoration: BoxDecoration(
          color: ColorConstant.whiteA700,
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
                  repositoriesItemModelObj.mongooseTypeScTxt.value,
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
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    2.00,
                  ),
                  top: getVerticalSize(
                    9.00,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        368.00,
                      ),
                      margin: EdgeInsets.only(
                        left: getHorizontalSize(
                          14.00,
                        ),
                      ),
                      child: Obx(
                        () => Text(
                          repositoriesItemModelObj.forkedfromtomTxt.value,
                          maxLines: null,
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
                // mainAxisSize: MainAxisSize.min,
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
                        ImageConstant.imgVector7,
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
                        repositoriesItemModelObj.k68kTxt.value,
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
                  repositoriesItemModelObj.javaScriptTxt.value != ""
                      ? Container(
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
                        )
                      : Container(),
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
                        repositoriesItemModelObj.javaScriptTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.textstyleinterregular162.copyWith(
                          fontSize: getFontSize(
                            16,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
