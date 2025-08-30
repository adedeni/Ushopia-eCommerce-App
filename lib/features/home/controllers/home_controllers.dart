import 'package:get/get.dart';

class HomeControllers extends GetxController {

  static HomeControllers get instance => Get.find();

  final carouselCurrentIndex = 0.obs;

  // ignore: strict_top_level_inference
  void updatePageIndicator (index) {
    carouselCurrentIndex.value = index;
  }
}