import 'package:egs_scores/core/util/ui_const.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('EGS SCORES'),
      actions: [
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(
              color: const Color(0xff64a19d),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Menu'),
              gapW6,
              const Icon(Icons.menu),
            ],
          ),
        )
      ],
    );
  }
}
