import '../controller/splash_mobile_controller.dart';
import 'package:get/get.dart';

class SplashMobileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashMobileController());
  }
}
