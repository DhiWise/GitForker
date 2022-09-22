import 'controller/text_controller.dart';
import 'package:flutter/material.dart';
import 'package:github/core/app_export.dart';
import 'package:github/widgets/custom_button.dart';
import 'package:github/widgets/custom_text_form_field.dart';

class TextScreen extends GetWidget<TextController> {
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(top: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(left: 16),
                                        child: Text("lbl_token".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterBold24
                                                .copyWith())),
                                  ]))),
                      Padding(
                          padding:
                              getPadding(left: 10, top: 68.350006, right: 10),
                          child: CommonImageView(
                              svgPath: ImageConstant.imgVector1,
                              height: getVerticalSize(159.30),
                              width: getHorizontalSize(163.33))),
                      CustomTextFormField(
                          width: 396,
                          focusNode: FocusNode(),
                          controller: controller.addtextController,
                          hintText: "msg_enter_personal".tr,
                          margin:
                              getMargin(left: 10, top: 98.349976, right: 10),
                          textInputAction: TextInputAction.done),
                      CustomButton(
                          width: 396,
                          text: "lbl_submit".tr,
                          margin: getMargin(
                              left: 10, top: 24, right: 10, bottom: 20),
                          onTap: onTapBtnSubmit)
                    ]))))));
  }

  void onTapBtnSubmit() {
    Get.find<PrefUtils>().setToken("token "+controller.addtextController.text);
    controller.callFetchUser(
      successCall: _onFetchUserSuccess,
      errCall: _onFetchUserError,
    );
  }

  void _onFetchUserSuccess() {
    Get.find<PrefUtils>().setUsername(controller.getUserResp.login!.toString());
    Get.toNamed(AppRoutes.homeScreen);
  }

  void _onFetchUserError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Invalid Token",
        middleText: "Please Enter Valid Token");
  }
}
