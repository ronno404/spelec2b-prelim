import 'package:flutter/material.dart';

import 'package:prelim/constants.dart';
import 'package:prelim/widgets/OnboardingPage.dart';

class OnboardingController extends StatefulWidget {
  const OnboardingController({super.key});

  @override
  State<OnboardingController> createState() => _OnboardingControllerState();
}

class _OnboardingControllerState extends State<OnboardingController> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: bgColor,
        child: Stack(
          alignment: Alignment.center,
          children: [
            PageView.builder(
              itemCount: 3,
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              itemBuilder: (context, index) => const OnboardingPage(),
            ),
            Positioned(
              bottom: 40,
              child: Row(
                children: List.generate(
                  3,
                  (index) => Padding(
                    padding: index == 0
                        ? const EdgeInsets.all(0)
                        : const EdgeInsets.only(left: 8.0),
                    child: IndicatorDot(isActive: index == currentIndex),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IndicatorDot extends StatelessWidget {
  const IndicatorDot({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 6,
      height: 6,
      decoration: BoxDecoration(
        color: isActive ? neonBlue : Colors.white.withOpacity(0.2),
        borderRadius: const BorderRadius.all(Radius.circular(6)),
      ),
    );
  }
}
