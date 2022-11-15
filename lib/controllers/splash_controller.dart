import 'dart:async';

import 'package:current_vpn/screens/signup/signup_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    Timer(Duration(seconds: 4), () => Get.to(SignupScreen(),),);
  }

}
