import 'package:egs_scores/core/font_family/font_family.dart';
import 'package:egs_scores/presentation/home/ui/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EgsScores extends StatelessWidget {
  const EgsScores({super.key});

  @override
  Widget build(BuildContext context) {
    _setUpStatusBarColor();
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
      ],
    );

    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          locale: const Locale('en', 'US'),
          theme:
              ThemeData(fontFamily: FontFamily.varelaRound, useMaterial3: true),
          themeMode: ThemeMode.light,
          title: 'Egs Scores'.tr,
          defaultTransition: Transition.rightToLeftWithFade,
          home: const HomePage(),
        );
      },
    );
  }

  static void _setUpStatusBarColor() {
    const Color color = Colors.transparent;
    const SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
        systemNavigationBarColor: color, statusBarColor: color);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}
