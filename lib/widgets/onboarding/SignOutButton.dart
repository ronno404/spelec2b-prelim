import 'package:flutter/material.dart';
import 'package:prelim/constants.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlineGradientButton(
      onTap: () {
        Navigator.pushNamed(context, '/home');
      },
      gradient: const LinearGradient(
        colors: [
          neonPink,
          neonGreen,
        ],
      ),
      strokeWidth: 3,
      padding: EdgeInsets.zero,
      radius: const Radius.circular(169),
      child: Container(
        width: 160,
        height: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(169),
          gradient: LinearGradient(
            colors: [
              neonPink.withOpacity(0.15),
              neonGreen.withOpacity(0.15),
            ],
          ),
        ),
        child: const Center(
          child: Text(
            "Sign Up",
            style: TextStyle(
              color: Color(0xffffffff),
              fontWeight: FontWeight.w400,
              fontSize: 14.0,
              letterSpacing: 0.37,
              height: 1.36,
            ),
          ),
        ),
      ),
    );
  }
}
