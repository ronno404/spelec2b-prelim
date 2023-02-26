import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prelim/constants.dart';
import 'package:prelim/widgets/details/CastList.dart';
import 'package:prelim/widgets/details/RatingBar.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: bgColor,
        body: SizedBox(
            height: screenHeight,
            width: screenWidth,
            child: Stack(alignment: Alignment.center, children: [
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    height: 565,
                    width: screenWidth,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                'assets/images/posterbig_eternals.png'))),
                  )),
              Positioned(
                  top: screenHeight * 0.05,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 44,
                            width: 44,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: const Color(0xffffffff).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(100),
                                border:
                                    Border.all(width: 3, color: Colors.white)),
                            child:
                                SvgPicture.asset('assets/icons/icon_back.svg'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 44,
                            width: 44,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(width: 3, color: Colors.white),
                            ),
                            child:
                                SvgPicture.asset('assets/icons/icon_menu.svg'),
                          ),
                        )
                      ],
                    ),
                  )),
              Positioned(
                top: 250,
                child: Container(
                  height: screenHeight,
                  width: screenWidth,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Color(0xff000000),
                        bgColor,
                      ],
                      stops: [0.1, 0.2, 1],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 347,
                right: 9,
                child: OutlineGradientButton(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      neonPink,
                      neonGreen,
                    ],
                  ),
                  strokeWidth: 3,
                  padding: EdgeInsets.zero,
                  radius: const Radius.circular(30),
                  child: SizedBox(
                    width: 60.0,
                    height: 60.0,
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              neonPink.withOpacity(0.3),
                              neonGreen.withOpacity(0.3),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withOpacity(0.15),
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                  'assets/icons/icon_play.svg'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.5,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Eternals',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white.withOpacity(0.85),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        '2021•Action-Adventure-Fantasy•2h36m',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white.withOpacity(0.75),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const RatingBar(),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'The saga of the Eternals, a race of\nimmortal beings who lived on Earth\nand shaped its history and\ncivilizations.',
                        textAlign: TextAlign.center,
                        maxLines: screenHeight <= 667 ? 2 : 4,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white.withOpacity(0.75),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 26.0),
                        child: Container(
                          height: 2,
                          width: 290,
                          color: const Color(0xffffffff).withOpacity(0.15),
                        ),
                      ),
                    ]),
              ),
              const Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 23),
                    child: CastList()),
              )
            ])));
  }
}
