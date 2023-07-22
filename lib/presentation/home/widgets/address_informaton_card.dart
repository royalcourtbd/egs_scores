import 'package:egs_scores/core/config/pro_colors.dart';
import 'package:egs_scores/core/util/ui_const.dart';
import 'package:egs_scores/core/util/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AddressInformationCard extends StatelessWidget {
  final String iconPath;
  final String addressTitle;
  final String address;
  final VoidCallback? onTap;

  const AddressInformationCard({
    super.key,
    required this.iconPath,
    required this.addressTitle,
    required this.address,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: paddingAll25,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(
              color: EgsColors.primaryColor,
              width: 6,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconPath,
              width: 30,
              height: 30,
              colorFilter: svgColorFilterr(EgsColors.primaryColor),
            ),
            gapH14,
            Text(
              addressTitle.toUpperCase(),
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                letterSpacing: 3,
              ),
            ),
            const Divider(
              color: EgsColors.primaryColor,
              endIndent: 100,
              indent: 100,
              thickness: 5,
              height: 50,
            ),
            // gapH20,
            InkWell(
              onTap: onTap,
              child: Text(
                address,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: address.isEmail
                      ? EgsColors.primaryColor
                      : const Color.fromRGBO(0, 0, 0, 0.5),
                  fontWeight: FontWeight.w500,
                  decoration: address.isEmail
                      ? TextDecoration.underline
                      : TextDecoration.none,
                  decorationColor: EgsColors.primaryColor,
                ),
              ),
            ),
            gapH10
          ],
        ),
      ),
    );
  }
}
