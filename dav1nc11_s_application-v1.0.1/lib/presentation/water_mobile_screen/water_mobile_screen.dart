import 'controller/water_mobile_controller.dart';
import 'package:dav1nc11_s_application/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class WaterMobileScreen extends GetWidget<WaterMobileController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: size.width,
          height: size.height,
          padding: getPadding(
            bottom: 50,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(
                0.5,
                0.5,
              ),
              end: Alignment(
                0,
                1,
              ),
              colors: [
                ColorConstant.blueGray800,
                ColorConstant.gray900,
              ],
            ),
          ),
          child: Container(
            padding: getPadding(
              left: 30,
              top: 25,
              right: 30,
              bottom: 25,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Spacer(),
                Container(
                  margin: getMargin(
                    left: 43,
                    right: 42,
                  ),
                  padding: getPadding(
                    left: 111,
                    top: 121,
                    right: 111,
                    bottom: 121,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: fs.Svg(
                        ImageConstant.imgGroup1,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          bottom: 89,
                        ),
                        child: Text(
                          "lbl_80".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold20,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: getPadding(
                      top: 45,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            112,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle24,
                                height: getSize(
                                  43,
                                ),
                                width: getSize(
                                  43,
                                ),
                                margin: getMargin(
                                  left: 32,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 27,
                                ),
                                child: Row(
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgRectangle10,
                                      height: getSize(
                                        15,
                                      ),
                                      width: getSize(
                                        15,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 2,
                                        top: 3,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "msg_tap_to_refresh_the".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterExtraLight8,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            44,
                          ),
                          margin: getMargin(
                            left: 74,
                            bottom: 39,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_tank".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterExtraLight20,
                              ),
                              Text(
                                "lbl_80".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterExtraLight16,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: getPadding(
            left: 23,
            right: 20,
            bottom: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle6,
                height: getSize(
                  43,
                ),
                width: getSize(
                  43,
                ),
                margin: getMargin(
                  top: 6,
                  bottom: 1,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle5,
                height: getSize(
                  43,
                ),
                width: getSize(
                  43,
                ),
                margin: getMargin(
                  left: 39,
                  top: 6,
                  bottom: 1,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle4,
                height: getSize(
                  50,
                ),
                width: getSize(
                  50,
                ),
                margin: getMargin(
                  left: 39,
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgCart,
                height: getVerticalSize(
                  38,
                ),
                width: getHorizontalSize(
                  43,
                ),
                margin: getMargin(
                  left: 29,
                  top: 11,
                  bottom: 1,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle8,
                height: getSize(
                  43,
                ),
                width: getSize(
                  43,
                ),
                margin: getMargin(
                  left: 42,
                  top: 6,
                  bottom: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
