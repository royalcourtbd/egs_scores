import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> navigateTo<T>({
  required Widget page,
  T? args,
}) async {
  Get.to(() => page, transition: Transition.cupertino, arguments: [args]);
}

ColorFilter svgColorFilterr(Color? color) =>
    ColorFilter.mode(color ?? Colors.black, BlendMode.srcATop);
