import 'package:dav1nc11_s_application/core/app_export.dart';
import 'package:dav1nc11_s_application/presentation/splash_mobile_screen/models/splash_mobile_model.dart';

class SplashMobileController extends GetxController {
  Rx<SplashMobileModel> splashMobileModelObj = SplashMobileModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(AppRoutes.waterMobileScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
