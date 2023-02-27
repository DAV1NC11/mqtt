import 'package:flutter/material.dart';
import 'package:dav1nc11_s_application/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get gradientBluegray800Gray900 => BoxDecoration(
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
      );
  static BoxDecoration get txtOutlineWhiteA700 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get gradientBluegray900Gray900 => BoxDecoration(
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
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius txtRoundedBorder5 = BorderRadius.circular(
    getHorizontalSize(
      5,
    ),
  );
}
