import '../controller/water_mobile_controller.dart';
import 'package:get/get.dart';

class WaterMobileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WaterMobileController());
  }
}
