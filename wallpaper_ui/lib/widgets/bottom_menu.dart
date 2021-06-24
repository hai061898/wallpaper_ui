import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wallpaper_ui/utils/color.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(
        vertical: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kPrimary,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            'assets/icons/load.svg',
            height: 25,
            color: Colors.white.withOpacity(0.4),
          ),
          SvgPicture.asset('assets/icons/picture.svg',
              height: 25, color: Colors.blue),
          SvgPicture.asset(
            'assets/icons/like.svg',
            height: 25,
            color: Colors.white.withOpacity(0.4),
          ),
          SvgPicture.asset(
            'assets/icons/menu.svg',
            height: 25,
            color: Colors.white.withOpacity(0.4),
          ),
        ],
      ),
    );
  }
}
