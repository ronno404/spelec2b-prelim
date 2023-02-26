import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prelim/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key, this.controller});

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: 340,
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 8),
      decoration: BoxDecoration(
        color: const Color(0xff767680).withOpacity(0.12),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/icon_search.svg'),
          const SizedBox(width: 6.0),
          Expanded(
            child: TextField(
              controller: controller,
              cursorColor: Colors.white,
              textAlignVertical: TextAlignVertical.center,
              style: TextStyle(
                color: Colors.white.withOpacity(0.6),
                fontWeight: FontWeight.w400,
                fontSize: 17.0,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                isCollapsed: true,
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                ),
              ),
            ),
          ),
          SvgPicture.asset('assets/icons/icon_microphone.svg'),
        ],
      ),
    );
  }
}
