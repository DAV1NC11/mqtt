import '../controller/getting_started_mobile_controller.dart';
import 'package:get/get.dart';

class GettingStartedMobileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GettingStartedMobileController());
  }
}
