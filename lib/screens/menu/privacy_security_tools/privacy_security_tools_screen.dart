import 'package:current_vpn/widgets/back_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/exports.dart';
import '../components/menu_btn.dart';

class PrivacySecurityToolScreen extends StatelessWidget {
  const PrivacySecurityToolScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackImageWidget(
      child: Scaffold(

        backgroundColor: Colors.transparent,

        /// body
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: padding16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ///appbar
                  CustomAppBar(
                    onBackTap: () {
                      Get.back();
                    },
                    titleText: 'Privacy & Security Tools',
                  ),
                  SizedBox(height: screenHeight(context) * 0.12),

                  /// menu btns
                  MenuButton(
                    onTap: () {

                    },
                    text: 'IP Address Checker',
                    iconPath: AppImages.vpnProtocol,
                    isPrefix: false,
                  ),
                  SizedBox(height: screenHeight(context) * 0.016),

                  /// menu btns
                  MenuButton(
                    onTap: () {

                    },
                    text: 'DNS Leak Test',
                    iconPath: AppImages.vpnProtocol,
                    isPrefix: false,
                  ),
                  SizedBox(height: screenHeight(context) * 0.016),

                  /// menu btns
                  MenuButton(
                    onTap: () {

                    },
                    text: 'WebRTC Leack Test',
                    iconPath: AppImages.vpnProtocol,
                    isPrefix: false,
                  ),
                  SizedBox(height: screenHeight(context) * 0.016),

                  /// menu btns
                  MenuButton(
                    onTap: () {

                    },
                    text: 'Password Generator',
                    iconPath: AppImages.vpnProtocol,
                    isPrefix: false,
                  ),
                  SizedBox(height: screenHeight(context) * 0.016),

                  /// menu btns
                  MenuButton(
                    onTap: () {

                    },
                    text: 'Trusted Services',
                    iconPath: AppImages.vpnProtocol,
                    isPrefix: false,
                  ),
                  SizedBox(height: screenHeight(context) * 0.016),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
