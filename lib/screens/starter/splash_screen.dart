import 'package:current_vpn/constants/exports.dart';
import 'package:current_vpn/widgets/back_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return BackImageWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,

        body: Center(
          child: Image.asset(AppImages.appLogo),
        ),
      ),
    );
  }
}