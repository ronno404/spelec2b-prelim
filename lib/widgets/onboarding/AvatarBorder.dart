import 'package:flutter/material.dart';
import 'package:prelim/constants.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class AvatarBorder extends StatelessWidget {
  const AvatarBorder({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlineGradientButton(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          neonPink,
          gradientPurple.withOpacity(0),
          gradientGreen.withOpacity(0),
          neonGreen,
        ],
        stops: const [0.1, 0.4, 0.55, 1],
      ),
      strokeWidth: 4,
      padding: EdgeInsets.zero,
      radius: const Radius.circular(169),
      child: SizedBox(
        width: 338.0,
        height: 338.0,
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(164),
            child: Container(
              width: 328.0,
              height: 328.0,
              padding: const EdgeInsets.only(top: 55),
              child: Image.asset(
                'assets/images/onboarding.png',
                alignment: Alignment.bottomLeft,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
