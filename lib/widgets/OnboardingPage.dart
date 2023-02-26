import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:prelim/constants.dart';
import 'package:prelim/widgets/onboarding/AvatarBorder.dart';
import 'package:prelim/widgets/onboarding/SignOutButton.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: bgColor,
      body: SizedBox(
          width: screenWidth,
          height: screenHeight,
          //background blurs
          child: Stack(alignment: Alignment.center, children: [
            Positioned(
              left: 251,
              top: 241,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: neonGreen.withOpacity(0.5),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 60,
                    sigmaY: 60,
                  ),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 6,
              top: 83,
              child: Container(
                height: 166,
                width: 166,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: neonPink.withOpacity(0.75),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 40,
                    sigmaY: 40,
                  ),
                  child: Container(
                    height: 166.0,
                    width: 166.0,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 117,
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 80,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: neonPink,
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 40,
                        sigmaY: 20,
                      ),
                      child: Container(
                        height: 40,
                        width: 80,
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: neonGreen.withOpacity(0.8),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 40.0,
                        sigmaY: 20.0,
                      ),
                      child: Container(
                        height: 40.0,
                        width: 80.0,
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //components
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AvatarBorder(),
                const SizedBox(height: 40),
                Text(
                  "Watch movies in\nVirtual Reality",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.85),
                    fontWeight: FontWeight.w700,
                    fontSize: 34.0,
                    letterSpacing: -0.3,
                    height: 1.36,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Download and watch offline\nwherever you are",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.75),
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                    letterSpacing: -0.3,
                    height: 1.36,
                  ),
                ),
                const SizedBox(height: 20),
                const SignUpButton(),
              ],
            )
          ])),
    );
  }
}
