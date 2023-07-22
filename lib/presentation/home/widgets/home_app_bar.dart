import 'package:egs_scores/core/config/pro_colors.dart';
import 'package:egs_scores/core/util/ui_const.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key, required this.onMenuTap});

  final VoidCallback onMenuTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text('Egs Score'.toUpperCase()),
      actions: [
        GestureDetector(
          onTap: onMenuTap,
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: EgsColors.primaryColor,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Menu',
                  style: TextStyle(color: EgsColors.primaryColor),
                ),
                gapW6,
                const Icon(
                  Icons.menu,
                  color: EgsColors.primaryColor,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
