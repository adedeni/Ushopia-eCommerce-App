import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../screens/login/login.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update Current Index when Page Scroll
  void updatePageIndicator(int index) => currentPageIndex.value = index;

  /// Jump to the specific dot selected page.
  void dotNavigationClick(dynamic index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// Update Current Index and jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      final storage = GetStorage();
      if (kDebugMode) {
        print('===========GET STORAGE Next Button==========');
        print(storage.read('virgin'));
      }

      storage.write('virgin', false);

       if (kDebugMode) {
        print('===========GET STORAGE Next Button==========');
        print(storage.read('virgin'));
      }
      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// Update Current Index and jump to last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
