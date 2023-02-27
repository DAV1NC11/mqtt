import 'controller/splash_mobile_controller.dart';
import 'package:dav1nc11_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashMobileScreen extends GetWidget<SplashMobileController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0.5),
                        end: Alignment(0, 1),
                        colors: [
                      ColorConstant.blueGray800,
                      ColorConstant.gray900
                    ])),
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 41, right: 41),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle33,
                              height: getSize(332),
                              width: getSize(332))
                        ])))));
  }
}
