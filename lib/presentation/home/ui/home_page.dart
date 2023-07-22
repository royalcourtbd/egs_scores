import 'dart:developer';

import 'package:egs_scores/core/assets/svg_path.dart';
import 'package:egs_scores/core/config/pro_colors.dart';
import 'package:egs_scores/core/font_family/font_family.dart';
import 'package:egs_scores/core/util/egs_screen.dart';

import 'package:egs_scores/core/util/ui_const.dart';
import 'package:egs_scores/presentation/home/controller/home_page_controller.dart';
import 'package:egs_scores/presentation/home/widgets/address_informaton_card.dart';
import 'package:egs_scores/presentation/home/widgets/home_app_bar.dart';
import 'package:egs_scores/presentation/home/widgets/search_section.dart';
import 'package:egs_scores/presentation/home/widgets/social_contact.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final FocusNode _searchFocus = FocusNode();
  final HomePageController _homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    log(EgsScreen.height.toString());
    return GetX(
      init: _homePageController,
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(65),
            child: HomeAppBar(
              onMenuTap: () {
                _homePageController.toggleMenuVisibility();
              },
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                AnimatedOpacity(
                  opacity: _homePageController.menuButton.value ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  child: Visibility(
                    visible: _homePageController.menuButton.value,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.px),
                      alignment: Alignment.centerLeft,
                      height: EgsScreen.width * .15,
                      width: double.infinity,
                      color: Colors.white,
                      child: const Text('Search'),
                    ),
                  ),
                ),
                Stack(
                  ///alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: EgsScreen.height,
                      child: Image.asset(
                        SvgPath.imgBg,
                        colorBlendMode: BlendMode.darken,
                        // color: Colors.black.withOpacity(0.3),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      top: 0,
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0.1, 0.75, 1.0],
                            colors: [
                              Color.fromRGBO(0, 0, 0, 0.3),
                              Color.fromRGBO(0, 0, 0, 0.7),
                              Colors.black,
                            ],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ShaderMask(
                              shaderCallback: (Rect bounds) {
                                return const LinearGradient(
                                  colors: [
                                    Color.fromRGBO(255, 255, 255, 0.9),
                                    Color.fromRGBO(255, 255, 255, 0),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ).createShader(bounds);
                              },
                              child: Text(
                                'EGS\nSCORES',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40.px,
                                  color: Colors.white,
                                  letterSpacing: 10.px,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Text(
                              'of your favorite Tickers of the NYSE for\nfree',
                              style: TextStyle(
                                fontSize: 16.px,
                                color: const Color.fromRGBO(255, 255, 255, .6),
                              ),
                              textAlign: TextAlign.center,
                            ),
                            gapH30,
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: EgsScreen.width * .1,
                                  vertical: EgsScreen.width * .05),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.px),
                                  color: EgsColors.primaryColor),
                              child: const Text(
                                'SEARCH',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  letterSpacing: 3,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding:
                      EdgeInsets.only(top: 160.px), // 10 rem = 10 * 16px = 160
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0, 0.75, 1],
                      colors: [
                        Colors.black,
                        Color.fromRGBO(0, 0, 0, 0.9),
                        Color.fromRGBO(0, 0, 0, 0.8),
                      ],
                    ),
                  ),
                ),
                //Search Field and upper text and bottom image
                SearchSection(searchFocus: _searchFocus),

                //address and social account link
                _buildAddressSection(),

                gapH40,
                const Text(
                  'Copyright © EGS Scores 2023',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: FontFamily.nunito,
                  ),
                ),
                gapH40,
              ],
            ),
          ),
        );
      },
    );
  }

  Container _buildAddressSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.px),
      decoration: const BoxDecoration(color: Colors.black),
      child: Column(
        children: [
          gapH40,
          const AddressInformationCard(
            iconPath: SvgPath.icLocation,
            address: 'Calle del Tajo 7, Villaviciosa de Odón',
            addressTitle: 'address',
          ),
          gapH20,
          AddressInformationCard(
            iconPath: SvgPath.icEmail,
            address: 'cbernalgarcia98@gmail.com',
            addressTitle: 'email',
            onTap: () => log('Email'),
          ),
          gapH20,
          const AddressInformationCard(
            iconPath: SvgPath.icMobile,
            address: '+34 680968206',
            addressTitle: 'phone',
          ),
          gapH40,
          gapH20,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialContact(
                iconPath: SvgPath.icTwitter,
                onTap: () {
                  log('object');
                },
              ),
              gapW16,
              SocialContact(
                iconPath: SvgPath.icFacebook,
                onTap: () {
                  log('object');
                },
              ),
              gapW16,
              SocialContact(
                iconPath: SvgPath.icGithub,
                onTap: () {
                  log('object');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
