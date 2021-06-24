import 'dart:math';

import 'package:get/get.dart';

class HomeController extends GetxController {
  double getRadomSize() {
    var y = Random().nextInt(250) / 100;
    if (y < 1.2)
      return getRadomSize();
    else
      return y;
  }
}
