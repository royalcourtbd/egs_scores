import 'package:egs_scores/core/config/pro_colors.dart';
import 'package:egs_scores/core/font_family/font_family.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextUtils {
  ///TextStyle//

  static TextStyle boldText({Color? color}) {
    return TextStyle(
      fontFamily: FontFamily.roboto,
      fontWeight: FontWeight.w700,
      color: color ?? EgsColors.boldTitleColor,
    );
  }

  static TextStyle searchBoxText() {
    return TextStyle(
      fontFamily: FontFamily.roboto,
      fontWeight: FontWeight.w400,
      color: EgsColors.searchTextColor,
      fontSize: 14.px,
    );
  }

  static TextStyle bodyTitleText(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      fontFamily: FontFamily.poppins,
      fontWeight: fontWeight ?? FontWeight.w500,
      color: color ?? EgsColors.titleColor,
      fontSize: fontSize ?? 14.px,
    );
  }
}

final double kPadding15 = 15.px;
final double kPadding20 = 20.px;
final double kPadding22 = 22.px;

final paddingAll8 = EdgeInsets.all(kPadding8);
final paddingAll10 = EdgeInsets.all(kPadding10);
final paddingAll15 = EdgeInsets.all(kPadding15);
final paddingAll20 = EdgeInsets.all(kPadding20);
final paddingAll22 = EdgeInsets.all(kPadding22);
final paddingAll30 = EdgeInsets.all(30.px);
final paddingAll25 = EdgeInsets.all(25.px);
final paddingAll12 = EdgeInsets.all(12.sp);

//////////Const sized gap height /////////////
final gapH2 = SizedBox(height: 2.px);
final gapH4 = SizedBox(height: 4.px);
final gapH6 = SizedBox(height: 6.px);
final gapH8 = SizedBox(height: 8.px);
final gapH10 = SizedBox(height: 10.px);
final gapH12 = SizedBox(height: 12.px);
final gapH14 = SizedBox(height: 14.px);
final gapH16 = SizedBox(height: 16.px);
final gapH18 = SizedBox(height: 18.px);
final gapH20 = SizedBox(height: 20.px);
final gapH22 = SizedBox(height: 22.px);
final gapH24 = SizedBox(height: 24.px);
final gapH26 = SizedBox(height: 26.px);
final gapH28 = SizedBox(height: 28.px);
final gapH30 = SizedBox(height: 30.px);
final gapH32 = SizedBox(height: 32.px);

extension DoubleExtension on double {
  double get px =>
      this * 1.0; // 1.0 is the pixel ratio, you can adjust this if needed
}

////
///

//////////Const sized gap width /////////////
final gapW4 = SizedBox(width: 4.px);
final gapW6 = SizedBox(width: 6.px);
final gapW8 = SizedBox(width: 8.px);
final gapW10 = SizedBox(width: 10.px);
final gapW12 = SizedBox(width: 12.px);
final gapW14 = SizedBox(width: 14.px);
final gapW16 = SizedBox(width: 16.px);
final gapW18 = SizedBox(width: 18.px);
final gapW20 = SizedBox(width: 20.px);
final gapW22 = SizedBox(width: 22.px);
final gapW24 = SizedBox(width: 24.px);
final gapW26 = SizedBox(width: 26.px);
final gapW28 = SizedBox(width: 28.px);
final gapW30 = SizedBox(width: 30.px);
final gapW32 = SizedBox(width: 32.px);
final gapH40 = SizedBox(height: 40.px);
///////////////////////////////////
///
///
///
///
////////////const padding///////////////

final double kPadding2 = 2.px;
final double kPadding4 = 4.px;
final double kPadding6 = 6.px;
final double kPadding8 = 8.px;
final double kPadding10 = 10.px;
final double kPadding12 = 12.px;
final double kPadding14 = 14.px;
final double kPadding16 = 16.px;
final double kPadding18 = 18.px;

final double kPadding24 = 24.px;
final double kPadding26 = 26.px;
