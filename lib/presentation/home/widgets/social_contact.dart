import 'package:egs_scores/core/util/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialContact extends StatelessWidget {
  final void Function()? onTap;
  final String iconPath;

  const SocialContact({super.key, required this.iconPath, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xff1A1A1A),
        ),
        child: SvgPicture.asset(
          iconPath,
          width: 25,
          height: 25,
          colorFilter: svgColorFilterr(Colors.grey),
        ),
      ),
    );
  }
}
