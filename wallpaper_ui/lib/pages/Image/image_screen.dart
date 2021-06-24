import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/button.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(image))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Get.back(),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 35,
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              ItemButton(
                text: 'Info',
                icon: Icons.info_outline,
                bgColor: Colors.white,
                press: () {},
              ),
              ItemButton(
                  text: 'Download',
                  icon: Icons.download_sharp,
                  bgColor: Colors.white,
                  press: () {}),
              ItemButton(
                text: 'Apply',
                icon: Icons.play_arrow,
                bgColor: Colors.pink,
                press: () {},
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
