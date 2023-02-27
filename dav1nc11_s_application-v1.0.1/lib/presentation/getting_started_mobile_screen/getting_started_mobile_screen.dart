import 'controller/getting_started_mobile_controller.dart';
import 'package:dav1nc11_s_application/core/app_export.dart';
import 'package:dav1nc11_s_application/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class GettingStartedMobileScreen
    extends GetWidget<GettingStartedMobileController> {
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
            bottom: 25,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(
                0.5,
                0.5,
              ),
              end: Alignment(
                0.5,
                1,
              ),
              colors: [
                ColorConstant.blueGray900,
                ColorConstant.gray900,
              ],
            ),
          ),
          child: Container(
            padding: getPadding(
              left: 35,
              top: 17,
              right: 35,
              bottom: 17,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle33,
                  height: getSize(
                    202,
                  ),
                  width: getSize(
                    202,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    341,
                  ),
                  margin: getMargin(
                    top: 47,
                  ),
                  padding: getPadding(
                    left: 20,
                    top: 9,
                    right: 20,
                    bottom: 9,
                  ),
                  decoration: AppDecoration.txtOutlineWhiteA700.copyWith(
                    borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                  ),
                  child: Text(
                    "lbl_username".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular25,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    341,
                  ),
                  margin: getMargin(
                    top: 14,
                  ),
                  padding: getPadding(
                    left: 22,
                    top: 9,
                    right: 22,
                    bottom: 9,
                  ),
                  decoration: AppDecoration.txtOutlineWhiteA700.copyWith(
                    borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                  ),
                  child: Text(
                    "lbl_password".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular25Gray50001,
                  ),
                ),
                Spacer(),
                CustomButton(
                  height: getVerticalSize(
                    60,
                  ),
                  text: "lbl_login".tr,
                  margin: getMargin(
                    bottom: 25,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: getPadding(
            left: 74,
            right: 74,
            bottom: 32,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "lbl_help".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterRegular20,
              ),
              Text(
                "lbl_register".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterRegular20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
