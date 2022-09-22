import 'controller/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:github/core/app_export.dart';

class SearchScreen extends GetWidget<SearchController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Column(children: [
              Expanded(
                  child: Container(
                      width: size.width,
                      child: SingleChildScrollView(
                          child: Container(
                              decoration:
                              BoxDecoration(color: ColorConstant.gray50),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                        width: size.width,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(20.00)),
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(16.00),
                                                right:
                                                getHorizontalSize(22.75)),
                                            child:
                                            Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: GestureDetector(
                                                        onTap: () {
                                                          onTapImgArrowleft24();
                                                        },
                                                        child: Icon(Icons
                                                            .arrow_back_sharp)),
                                                    flex: 1,),
                                                  Expanded(child:
                                                  TextField(
                                                    controller: controller
                                                        .searchTxt.value,
                                                    onChanged: (value) {
                                                      controller.searchInput
                                                          .value = value.toLowerCase();
                                                    },
                                                    decoration: InputDecoration(
                                                      hintText: 'Search...',
                                                    ),
                                                  )
                                                    , flex: 10,
                                                  ),
                                                  Expanded(child: Padding(
                                                      padding: EdgeInsets.only(
                                                          top: getVerticalSize(
                                                              6.76),
                                                          bottom:
                                                          getVerticalSize(
                                                              6.75)),
                                                      child: GestureDetector(
                                                        onTap: (()=>{
                                                          controller.searchTxt.value.text= "",
                                                          controller.searchInput.value = ""
                                                        }),
                                                        child: Icon(
                                                            Icons.close),)),
                                                    flex: 1,)
                                                ])
                                        )),
                                    Container(
                                        width: double.infinity,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(16.00)),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray50),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                  Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left:
                                                          getHorizontalSize(
                                                              19.00),
                                                          top: getVerticalSize(
                                                              23.00),
                                                          right:
                                                          getHorizontalSize(
                                                              19.00)),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                                height:
                                                                getVerticalSize(
                                                                    23.51),
                                                                width:
                                                                getHorizontalSize(
                                                                    18.00),
                                                                child:
                                                                SvgPicture
                                                                    .asset(
                                                                    ImageConstant
                                                                        .imgIcon,
                                                                    fit: BoxFit
                                                                        .fill)
                                                            ),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                    left: getHorizontalSize(
                                                                        19.00),
                                                                    top: getVerticalSize(
                                                                        1.00),
                                                                    bottom:
                                                                    getVerticalSize(
                                                                        0.51)),
                                                                child: Obx(() =>
                                                                    GestureDetector(onTap:(){
                                                                      searchWithText("repo");
                                                                    },child:Text(
                                                                        'Repositories with "${controller
                                                                            .searchInput
                                                                            .value}"',
                                                                        overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                        textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                        style: AppStyle
                                                                            .textstyleinterregular181
                                                                            .copyWith(
                                                                            fontSize:
                                                                            getFontSize(
                                                                                18)))),)

                                                            )
                                                          ]))),
                                              Align(
                                                  alignment:
                                                  Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left:
                                                          getHorizontalSize(
                                                              19.00),
                                                          top: getVerticalSize(
                                                              26.50),
                                                          right:
                                                          getHorizontalSize(
                                                              19.00)),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                    top: getVerticalSize(
                                                                        1.50),
                                                                    bottom:
                                                                    getVerticalSize(
                                                                        0.50)),
                                                                child: Container(
                                                                    height:
                                                                    getVerticalSize(
                                                                        19.00),
                                                                    width: getHorizontalSize(
                                                                        17.99),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                        ImageConstant
                                                                            .imgIcon3,
                                                                        fit: BoxFit
                                                                            .fill))),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                    left: getHorizontalSize(
                                                                        19.01)),
                                                                child:  GestureDetector(onTap:(){
                                                                  searchWithText("people");
                                                                },child: Obx(() => Text(
                                                                    'People with "${controller
                                                                        .searchInput
                                                                        .value}"',
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                    style: AppStyle
                                                                        .textstyleinterregular181
                                                                        .copyWith(
                                                                        fontSize:
                                                                        getFontSize(
                                                                            18))))))
                                                          ]))),
                                              Align(
                                                  alignment:
                                                  Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left:
                                                          getHorizontalSize(
                                                              16.00),
                                                          top: getVerticalSize(
                                                              26.00),
                                                          right:
                                                          getHorizontalSize(
                                                              16.00)),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                                height: getSize(
                                                                    24.00),
                                                                width: getSize(
                                                                    24.00),
                                                                child: SvgPicture
                                                                    .asset(
                                                                    ImageConstant
                                                                        .imgOcticonorganiz,
                                                                    fit: BoxFit
                                                                        .fill)),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                    left: getHorizontalSize(
                                                                        16.00),
                                                                    top: getVerticalSize(
                                                                        1.00),
                                                                    bottom:
                                                                    getVerticalSize(
                                                                        1.00)),
                                                                child:  GestureDetector(onTap:(){
                                                                  searchWithText("org");
                                                                },child: Obx(() => Text(
                                                                    'Organizations with "${controller
                                                                        .searchInput
                                                                        .value}"',
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                    style: AppStyle
                                                                        .textstyleinterregular181
                                                                        .copyWith(
                                                                        fontSize:
                                                                        getFontSize(
                                                                            18))))))
                                                          ]))),
                                              Align(
                                                  alignment:
                                                  Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left:
                                                          getHorizontalSize(
                                                              16.00),
                                                          top: getVerticalSize(
                                                              24.00),
                                                          right:
                                                          getHorizontalSize(
                                                              16.00)),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                          mainAxisSize:
                                                          MainAxisSize.min,
                                                          children: [
                                                            ClipRRect(
                                                                borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                    getHorizontalSize(
                                                                        45.00)),
                                                                child: Container(
                                                                    height:
                                                                    getSize(
                                                                        24.00),
                                                                    width: getSize(
                                                                        24.00),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                        ImageConstant
                                                                            .imgArrowleft241,
                                                                        fit: BoxFit
                                                                            .fill))),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                    left: getHorizontalSize(
                                                                        16.00),
                                                                    top: getVerticalSize(
                                                                        1.00),
                                                                    bottom:
                                                                    getVerticalSize(
                                                                        1.00)),
                                                                child:  GestureDetector(onTap:(){
                                                                  searchWithText("jump");
                                                                },child: Obx(() => Text(
                                                                    'Jump to "${controller
                                                                        .searchInput
                                                                        .value}"',
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                    style: AppStyle
                                                                        .textstyleinterregular181
                                                                        .copyWith(
                                                                        fontSize:
                                                                        getFontSize(
                                                                            18))))))
                                                          ]))),
                                            ]))
                                  ]))))),
            ])));
  }

  onTapImgArrowleft24() {
    Get.back();
  }
  searchWithText(type){
    switch(type){
      case 'repo':
        Get.toNamed(AppRoutes.repositoriesScreen, arguments: {
          NavigationArgs.searchKeyword: controller.searchInput.value,
        });
        break;
      case 'org':
        Get.toNamed(AppRoutes.organizationScreen, arguments: {
          NavigationArgs.org: controller.searchInput.value,
        });
        break;
      case 'people':
        Get.toNamed(AppRoutes.usersScreen, arguments: {
          NavigationArgs.q: controller.searchInput.value,
        });
        break;
      case 'jump':
        Get.toNamed(AppRoutes.usersScreen, arguments: {
          NavigationArgs.q: controller.searchInput.value,
        });
        break;
    }
  }
}
