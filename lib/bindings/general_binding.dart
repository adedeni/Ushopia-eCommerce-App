import 'package:get/get.dart';
import 'package:ushopia/utilities/helpers/network_manager.dart';

class GeneralBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ANetworkManager());
  }
}
