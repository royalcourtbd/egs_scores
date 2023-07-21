import 'package:egs_scores/core/config/pro_colors.dart';
import 'package:egs_scores/core/font_family/font_family.dart';
import 'package:egs_scores/core/util/desktop_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextUtils {
  // static final HomePageController _homeController =
  //     Get.put(HomePageController());
  static TextStyle boldText({
    Color? color,
  }) {
    return TextStyle(
      fontFamily: FontFamily.roboto,
      fontWeight: FontWeight.w700,
      color: color ?? DrutoPayColors.boldTitleColor,
    );
  }

  static TextStyle searchBoxText() {
    return TextStyle(
      fontFamily: FontFamily.roboto,
      fontWeight: FontWeight.w400,
      color: DrutoPayColors.searchTextColor,
      fontSize: 14.px,
    );
  }

  static TextStyle bodyTitleText(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      fontFamily: FontFamily.poppins,
      fontWeight: fontWeight ?? FontWeight.w500,
      color: color ?? DrutoPayColors.titleColor,
      fontSize: fontSize ?? 14.px,
    );
  }

  static TextStyle bodySubtitleText(
      {Color? color, double? fontSize, String? fontFamily}) {
    return TextStyle(
      fontFamily: fontFamily ?? FontFamily.roboto,
      fontWeight: FontWeight.w400,
      color: color ?? DrutoPayColors.subTitleColor,
      fontSize: fontSize ?? 14.px,
    );
  }

  static TextStyle mediumText({Color? color}) {
    return TextStyle(
      fontFamily: FontFamily.roboto,
      fontWeight: FontWeight.w600,
      color: color ?? DrutoPayColors.titleColor,
      fontSize: 14.px,
    );
  }

  static TextStyle titleText({
    Color? color,
    double? fontSize,
    TextDecoration? decoration,
    double? height,
    FontWeight? fontWeight,
  }) {
    return TextStyle(
      height: height ?? 1,
      fontFamily: FontFamily.poppins,
      fontWeight: fontWeight ?? FontWeight.w600,
      decoration: decoration ?? TextDecoration.none,
      color: color ??
          (Get.isDarkMode
              ? DrutoPayColors.darkTitleColor
              : DrutoPayColors.titleColor),
      fontSize: fontSize ?? 16.px,
    );
  }

  static TextStyle subtitleText(
      {Color? color,
      double? height,
      FontWeight? fontWeight,
      TextDecoration? decoration,
      double? fontSize}) {
    return TextStyle(
      fontFamily: FontFamily.roboto,
      fontWeight: fontWeight ?? FontWeight.w500,
      height: height ?? 1,
      decoration: decoration ?? TextDecoration.none,
      color: color ??
          (Get.isDarkMode
              ? DrutoPayColors.darkSubTitleColor
              : DrutoPayColors.subTitleColor),
      fontSize: fontSize ?? 14.px,
    );
  }

  static TextStyle bodyMediumText(
      {double? fontSizeMobile, double? fontSizeTab, Color? color}) {
    return TextStyle(
      fontFamily: FontFamily.poppins,
      fontWeight: FontWeight.w600,
      color: color ??
          (Get.isDarkMode
              ? DrutoPayColors.darkTitleColor
              : DrutoPayColors.titleColor),
      fontSize: DrutoPayScreen.isMobile
          ? fontSizeMobile ?? 12.px
          : fontSizeTab ?? 22.px,
    );
  }

  static TextStyle displayLargeText({Color? color}) {
    return TextStyle(
      fontFamily: FontFamily.poppins,
      fontWeight: FontWeight.w700,
      color: color ??
          (Get.isDarkMode
              ? DrutoPayColors.darkTitleColor
              : DrutoPayColors.titleColor),
      fontSize: DrutoPayScreen.isMobile ? 18.px : 36.px,
    );
  }

  static TextStyle headLineText({Color? color}) {
    return TextStyle(
      fontFamily: FontFamily.poppins,
      fontWeight: FontWeight.w600,
      color: color ??
          (Get.isDarkMode
              ? DrutoPayColors.darkTitleColor
              : DrutoPayColors.headLineColor),
      fontSize: DrutoPayScreen.isMobile ? 18.px : 36.px,
    );
  }

  static TextStyle subtitleMediumText(
      {Color? color, double? height, FontWeight? fontWeight}) {
    return TextStyle(
      fontFamily: FontFamily.roboto,
      fontWeight: fontWeight ?? FontWeight.w400,
      height: height ?? 1.8,
      color: color ??
          (Get.isDarkMode
              ? DrutoPayColors.darkTitleColor
              : DrutoPayColors.titleColor),
      fontSize: DrutoPayScreen.isMobile ? 14.px : 22.px,
    );
  }

  static TextStyle bodySmallText() {
    return TextStyle(
      fontFamily: FontFamily.poppins,
      fontWeight: FontWeight.w600,
      color: DrutoPayColors.primaryColor,
      fontSize: DrutoPayScreen.isMobile ? 10.px : 18.px,
    );
  }

  static TextStyle titleSmallText({double? fontSize, Color? color}) {
    return TextStyle(
      fontFamily: FontFamily.poppins,
      fontWeight: FontWeight.w400,
      height: 1.8,
      color: color ??
          (Get.isDarkMode
              ? DrutoPayColors.darkSubTitleColor
              : DrutoPayColors.subTitleColor),
      fontSize: DrutoPayScreen.isMobile ? fontSize ?? 12.px : 25.px,
    );
  }

  static TextStyle topBarWhiteText({Color? color}) {
    return TextStyle(
      fontFamily: FontFamily.poppins,
      fontWeight: FontWeight.w700,
      color: color ?? DrutoPayColors.whiteColor,
      fontSize: DrutoPayScreen.isMobile ? 20.px : 34.px,
    );
  }

  static TextStyle smallText(
      {Color? color, double? height, TextDecoration? decoration}) {
    return TextStyle(
      wordSpacing: 2,
      height: height ?? 1.3,
      fontFamily: FontFamily.roboto,
      decoration: decoration ?? TextDecoration.none,
      fontWeight: FontWeight.w400,
      color: color ?? DrutoPayColors.whiteColor,
      fontSize: DrutoPayScreen.isMobile ? 12.px : 20.px,
    );
  }
}

//////////Horizintal padding////////////////////
final paddingH10 =
    EdgeInsets.symmetric(horizontal: DrutoPayScreen.isMobile ? 10.px : 18.px);
final paddingH12 = EdgeInsets.symmetric(horizontal: 12.px);
final paddingH14 =
    EdgeInsets.symmetric(horizontal: DrutoPayScreen.isMobile ? 14.px : 20.px);
final paddingH16 = EdgeInsets.symmetric(horizontal: 16.px);
final paddingH15 = EdgeInsets.symmetric(
  horizontal: DrutoPayScreen.isMobile ? 15.px : 25.px,
);
final paddingH18 = EdgeInsets.symmetric(horizontal: 18.px);
final paddingH20 = EdgeInsets.symmetric(horizontal: 20.px);
final paddingH22 = EdgeInsets.symmetric(horizontal: 22.px);
final paddingH24 = EdgeInsets.symmetric(horizontal: 24.px);
//////////////////////////////////////////////////

//////////vertical  padding////////////////////
final paddingV8 = EdgeInsets.symmetric(vertical: 8.px);
final paddingV10 = EdgeInsets.symmetric(vertical: 10.px);
final paddingV12 = EdgeInsets.symmetric(vertical: 12.px);
final paddingV14 = EdgeInsets.symmetric(vertical: 14.px);
final paddingV16 = EdgeInsets.symmetric(vertical: 16.px);
final paddingV18 = EdgeInsets.symmetric(vertical: 18.px);
final paddingV20 = EdgeInsets.symmetric(vertical: 20.px);
final paddingV22 = EdgeInsets.symmetric(vertical: 22.px);
final paddingV24 = EdgeInsets.symmetric(vertical: 24.px);
///////////////////////////////////////////////////////
///

///
//////////top  padding////////////////////
final paddingT10 = EdgeInsets.only(top: 10.px);
final paddingT12 = EdgeInsets.only(top: 12.px);
final paddingT14 =
    EdgeInsets.only(top: DrutoPayScreen.isMobile ? 14.px : 26.px);
final paddingT16 = EdgeInsets.only(top: 16.px);
final paddingT18 = EdgeInsets.only(top: 18.px);
final paddingT20 = EdgeInsets.only(top: 20.px);
final paddingT22 = EdgeInsets.only(top: 22.px);
final paddingT24 = EdgeInsets.only(top: 24.px);
final paddingT10B10L15 = EdgeInsets.only(
    top: DrutoPayScreen.isMobile ? 10.px : 25.px,
    bottom: DrutoPayScreen.isMobile ? 10.px : 25.px,
    left: DrutoPayScreen.isMobile ? 18.px : 32.px);

final paddingL14R14B14 =
    EdgeInsets.only(left: kPadding14, right: kPadding14, bottom: kPadding14);

///////////////////////////////////////////////////////
////////////////////buttom////////////////
final paddingB10 = EdgeInsets.only(
  bottom: DrutoPayScreen.isMobile ? 10.px : 20.px,
);

final double kPadding15 = 15.px;
final double kPadding20 = 20.px;
final double kPadding22 = DrutoPayScreen.isMobile ? 22.px : 32.px;
final paddingT15L15R15 =
    EdgeInsets.only(top: kPadding15, left: kPadding15, right: kPadding15);

///
final paddingV10H15 = EdgeInsets.symmetric(
    vertical: 10, horizontal: DrutoPayScreen.isMobile ? 15.px : 22.px);
final paddingV15H13 = EdgeInsets.symmetric(
    vertical: DrutoPayScreen.isMobile ? 15.px : 25.px,
    horizontal: DrutoPayScreen.isMobile ? 13.px : 23.px);
final paddingV6H11 = EdgeInsets.symmetric(
    vertical: DrutoPayScreen.isMobile ? 6.px : 12.px,
    horizontal: DrutoPayScreen.isMobile ? 11.px : 22.px);
final paddingV16H14 = EdgeInsets.symmetric(vertical: 16.px, horizontal: 14.px);
final paddingH7V15 = EdgeInsets.symmetric(
    horizontal: DrutoPayScreen.isMobile ? 7.px : 15.px,
    vertical: DrutoPayScreen.isMobile ? 15.px : 27.px);
final paddingH15V15 = EdgeInsets.symmetric(
  horizontal: DrutoPayScreen.isMobile ? 15.px : 25.px,
  vertical: DrutoPayScreen.isMobile ? 15.px : 25.px,
);
final paddingH17 = EdgeInsets.symmetric(
  horizontal: DrutoPayScreen.isMobile ? 17.px : 25.px,
);

//////////left  padding////////////////////
final paddingL15 =
    EdgeInsets.only(left: DrutoPayScreen.isMobile ? 15.px : 25.px);
/////////////////////////////////////

final paddingAll1 = EdgeInsets.all(DrutoPayScreen.isMobile ? 1.5.px : 3.px);
final paddingAll6 = EdgeInsets.all(DrutoPayScreen.isMobile ? 6.px : 12.px);
final paddingAll8 = EdgeInsets.all(kPadding8);
final paddingAll10 = EdgeInsets.all(kPadding10);
final paddingAll14 = EdgeInsets.all(DrutoPayScreen.isMobile ? 14.px : 26.px);
final paddingAll15 = EdgeInsets.all(kPadding15);
final paddingAll20 = EdgeInsets.all(kPadding20);
final paddingAll22 = EdgeInsets.all(kPadding22);
final paddingAll30 = EdgeInsets.all(DrutoPayScreen.isMobile ? 30.px : 60.px);
final paddingAll25 = EdgeInsets.all(DrutoPayScreen.isMobile ? 25.px : 40.px);
final paddingAll12 = EdgeInsets.all(12.sp);

///
///DrutoPayScreen.isMobile ? 6.px : 12.px;
///
final paddingL15B15T15 =
    EdgeInsets.only(left: kPadding15, top: kPadding15, bottom: kPadding15);

final paddingH10V15 = EdgeInsets.symmetric(
    horizontal: DrutoPayScreen.isMobile ? 10.px : 16.px,
    vertical: DrutoPayScreen.isMobile ? 15.px : 25.px);
final paddingH25V10 = EdgeInsets.symmetric(
    horizontal: DrutoPayScreen.isMobile ? 25.px : 35.px,
    vertical: DrutoPayScreen.isMobile ? 10.px : 20.px);
///////////////////////////////////////////////////////

//////////Const sized gap /////////////
final gapH2 = SizedBox(height: DrutoPayScreen.isMobile ? 2.px : 4.px);
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
final gapH28 = SizedBox(height: DrutoPayScreen.isMobile ? 28.px : 38.px);
final gapH30 = SizedBox(height: 30.px);
final gapH32 = SizedBox(height: DrutoPayScreen.isMobile ? 32.px : 42.px);
final gapW4 = SizedBox(width: 4.px);
final gapW6 = SizedBox(width: 6.px);
final gapW8 = SizedBox(width: DrutoPayScreen.isMobile ? 8.px : 14.px);
final gapW10 = SizedBox(width: 10.px);
final gapW12 = SizedBox(width: DrutoPayScreen.isMobile ? 12.px : 18.px);
final gapW14 = SizedBox(width: DrutoPayScreen.isMobile ? 14.px : 22.px);
final gapW16 = SizedBox(width: 16.px);
final gapW18 = SizedBox(width: DrutoPayScreen.isMobile ? 18.px : 28.px);
final gapW20 = SizedBox(width: DrutoPayScreen.isMobile ? 20.px : 28.px);
final gapW22 = SizedBox(width: 22.px);
final gapW24 = SizedBox(width: 24.px);
final gapW26 = SizedBox(width: DrutoPayScreen.isMobile ? 26.px : 36.px);
final gapW28 = SizedBox(width: 28.px);
final gapW30 = SizedBox(width: 30.px);
final gapW32 = SizedBox(width: 32.px);
final gapH40 = SizedBox(height: DrutoPayScreen.isMobile ? 40.px : 50.px);
///////////////////////////////////
///
///
///
///
////////////const padding///////////////

final double kPadding2 = DrutoPayScreen.isMobile ? 2.px : 4.px;
final double kPadding4 = DrutoPayScreen.isMobile ? 4.px : 8.px;
final double kPadding6 = DrutoPayScreen.isMobile ? 6.px : 12.px;
final double kPadding8 = 8.px;
final double kPadding10 = 10.px;
final double kPadding12 = DrutoPayScreen.isMobile ? 12.px : 22.px;
final double kPadding14 = DrutoPayScreen.isMobile ? 14.px : 28.px;
final double kPadding16 = DrutoPayScreen.isMobile ? 16.px : 28.px;
final double kPadding18 = DrutoPayScreen.isMobile ? 18.px : 28.px;

final double kPadding24 = DrutoPayScreen.isMobile ? 24.px : 34.px;
final double kPadding26 = DrutoPayScreen.isMobile ? 26.px : 36.px;

//////////////////////////////////
///
///
//////////const Radius//////////////

final double kRadius2 = DrutoPayScreen.isMobile ? 2.px : 4;
final double kRadius4 = DrutoPayScreen.isMobile ? 4.px : 6;
final double kRadius6 = DrutoPayScreen.isMobile ? 6.px : 8;
final BorderRadiusGeometry radius4 =
    BorderRadius.circular(DrutoPayScreen.isMobile ? 4.px : 10.px);
final BorderRadiusGeometry radius6 =
    BorderRadius.circular(DrutoPayScreen.isMobile ? 6.px : 14.px);
final double kRadius8 = DrutoPayScreen.isMobile ? 8.px : 16.px;
final double kRadius10 = 10.px;
final double kRadius12 = 12.px;
final double kRadius14 = 14.px;
final double kRadius16 = DrutoPayScreen.isMobile ? 16.px : 24;
final double kRadius18 = DrutoPayScreen.isMobile ? 18.px : 28;
final double kRadius20 = DrutoPayScreen.isMobile ? 20.px : 30.px;
final double kRadius22 = 22.px;
final double kRadius24 = 24.px;
final double kRadius26 = 26.px;
final double kRadius50 = 50.px;
/////////////////////////////////////
///
///
///
////////////////////const Position/////////////////
final double positionBottom15 = DrutoPayScreen.isMobile ? 15.px : 35.px;
final double position10 = DrutoPayScreen.isMobile ? 10.px : 20.px;
const double circleAvatarRadius17 = 17;
const double circleAvatarRadius16 = 16;
