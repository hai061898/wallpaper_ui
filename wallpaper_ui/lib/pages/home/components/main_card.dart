import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaper_ui/pages/Image/image_screen.dart';
import 'package:wallpaper_ui/pages/home/controller.dart';

class MainCard extends StatelessWidget {
  const MainCard({Key? key, this.image = 'assets/wall_1.jpg'})
      : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    final double y = controller.getRadomSize();
    return GestureDetector(
      onTap: ()=>Get.to(ImageScreen(image: image)),
      child: AspectRatio(  
        aspectRatio: 1/y,
        child: Container(  
          margin: EdgeInsets.only(bottom: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image:AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
