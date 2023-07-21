import 'package:egs_scores/core/util/ui_const.dart';
import 'package:egs_scores/presentation/home/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: HomeAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 600,
                  child: Image.asset(
                    'assets/images/bg-masthead-min.jpg',
                    colorBlendMode: BlendMode.darken,
                    color: Colors.black.withOpacity(0.3),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  top: 0,
                  child: Container(
                    // Set the size of the container as needed
                    width: double.infinity,
                    // height: 175,
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
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                          child: const Text(
                            'EGS\nSCORES',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Colors.white,
                              letterSpacing: 10,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Text(
                          'of your favorite Tickers of the NYSE for\nfree',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(255, 255, 255, .6),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        gapH30,
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 35, vertical: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xff64a19d)),
                          child: const Text(
                            'SEARCH',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              letterSpacing: 3,
                            ),
                          ),
                        ),
                        //const Spacer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding:
                  const EdgeInsets.only(top: 160), // 10 rem = 10 * 16px = 160
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
            Container(
              height: 600,
              color: const Color.fromARGB(255, 255, 58, 58),
              child: const Column(
                children: [
                  Text(
                      'To see the report of any company, please input the ticker:')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
