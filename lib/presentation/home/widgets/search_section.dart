import 'package:egs_scores/core/assets/svg_path.dart';
import 'package:egs_scores/core/util/ui_const.dart';
import 'package:egs_scores/core/util/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({
    super.key,
    required FocusNode searchFocus,
  }) : _searchFocus = searchFocus;

  final FocusNode _searchFocus;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Color.fromRGBO(255, 255, 255, 0.15),
            Color.fromRGBO(255, 255, 255, 0),
          ],
        ),
      ),
      child: Column(
        children: [
          Text(
            'To see the report of any company, please input the ticker:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23.px,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          gapH16,
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.2),
                    blurRadius: 15,
                    spreadRadius: 0,
                    offset: const Offset(0, 0),
                  )
                ]),
            child: TextFormField(
              textAlign: TextAlign.center,
              cursorColor: Colors.white,
              cursorWidth: 1,
              focusNode: _searchFocus,
              onTapOutside: (event) => _searchFocus.unfocus(),
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                fillColor: const Color(0xff040404),
                filled: true,
                hintText: 'Search...',
                hintStyle: const TextStyle(color: Color(0xff757575)),
                alignLabelWithHint: true,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SvgPicture.asset(
                    SvgPath.icSearch,
                    height: 20,
                    width: 20,
                    colorFilter: svgColorFilterr(Colors.white),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                //  focusedBorder: ,
              ),
            ),
          ),
          gapH30,
          Image.asset(SvgPath.imgBg2)
        ],
      ),
    );
  }
}
