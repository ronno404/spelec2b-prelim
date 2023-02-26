import 'package:flutter/material.dart';
import 'package:prelim/constants.dart';

class RatingBar extends StatelessWidget {
  const RatingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        5,
        (index) => Padding(
          padding: index == 0
              ? const EdgeInsets.all(0)
              : const EdgeInsets.only(left: 6.0),
          child: Icon(
            Icons.star,
            size: 14,
            color: index < 3 ? yellowRating : Colors.white,
          ),
        ),
      ),
    );
  }
}
